package main

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"errors"
	proto "gogrpctry/protos/colodigits"
	"log"
	"net"
	"os"
	"time"

	"google.golang.org/grpc"
	"google.golang.org/grpc/grpclog"
)

var grpcLogger grpclog.LoggerV2

func init() {
	grpcLogger = grpclog.NewLoggerV2(os.Stdout, os.Stdout, os.Stdout)
}

type channelMap map[*proto.ColodigitService_GetColodigitsServer]chan *proto.Colodigit

type Server struct {
	colodigits []*proto.Colodigit
	channels   channelMap
	proto.UnimplementedColodigitServiceServer
}

func (s *Server) AddColodigit(ctx context.Context, colodigit *proto.Colodigit) (*proto.Colodigit, error) {
	// grpcLogger.Info("Adding colodigit: ", colodigit.GetDigit(), colodigit.GetR(), colodigit.GetG(), colodigit.GetB(), colodigit.GetId().GetId())
	timestamp := time.Time{}
	generatedID := sha256.Sum256([]byte(timestamp.String()))
	colodigitID := &proto.ColodigitID{Id: hex.EncodeToString(generatedID[:])}
	colodigit.Id = colodigitID
	s.colodigits = append(s.colodigits, colodigit)
	grpcLogger.Infof("Trying to send to %v clients", len(s.channels))
	for _, channel := range s.channels {
		channel <- colodigit
	}
	return colodigit, nil
}

func (s *Server) DeleteColodigit(ctx context.Context, colodigitID *proto.ColodigitID) (*proto.NoParamIO, error) {
	index := -1
	for i, colodigit := range s.colodigits {
		if colodigit.GetId().GetId() == colodigitID.GetId() {
			index = i
			break
		}
	}

	grpcLogger.Info("Deleting colodigit: ", s.colodigits[index].GetDigit(), s.colodigits[index].GetR(), s.colodigits[index].GetG(), s.colodigits[index].GetB(), s.colodigits[index].GetId().GetId())
	s.colodigits[index] = s.colodigits[len(s.colodigits)-1]
	s.colodigits = s.colodigits[:len(s.colodigits)-1]

	return &proto.NoParamIO{}, nil
}

func (s *Server) ModifyColodigit(ctx context.Context, colodigit *proto.Colodigit) (*proto.NoParamIO, error) {
	for i, cd := range s.colodigits {
		if cd.GetId().GetId() == colodigit.GetId().GetId() {
			grpcLogger.Info("Modifying colodigit: ", colodigit.GetDigit(), colodigit.GetR(), colodigit.GetG(), colodigit.GetB(), colodigit.GetId().GetId())

			s.colodigits[i] = colodigit
			break
		}
	}
	return &proto.NoParamIO{}, nil
}

func (s *Server) GetColodigits(_ *proto.NoParamIO, stream proto.ColodigitService_GetColodigitsServer) error {
	grpcLogger.Infof("New subcription: %v", stream)
	ch := make(chan *proto.Colodigit)
	s.channels[&stream] = ch

	go func() {
		for _, colodigit := range s.colodigits {
			ch <- colodigit
		}
	}()

	for {
		cd := <-ch
		if stream.Context().Err() != nil {
			close(ch)
			delete(s.channels, &stream)
			return errors.New("stream closed")
		} else {
			grpcLogger.Infof("Sending %v, to %v", cd.Digit, stream)
			err := stream.Send(cd)
			if err != nil {
				grpcLogger.Error(err)
			}
		}
	}
}

func main() {
	server := &Server{
		channels: channelMap{},
	}

	grpc := grpc.NewServer()
	listener, err := net.Listen("tcp", ":8080")
	if err != nil {
		log.Fatalf("Failed to listen: %v", err)
	}
	grpcLogger.Info("Serving on :8080")
	proto.RegisterColodigitServiceServer(grpc, server)
	grpc.Serve(listener)
}
