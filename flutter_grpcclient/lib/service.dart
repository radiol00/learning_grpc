import 'package:flutter/material.dart';
import 'package:flutter_grpcclient/protos/colodigits/colodigits.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class Service {
  static ColodigitServiceClient client;
  static ResponseStream<Colodigit> colodigitStream;
  Service() {
    client = ColodigitServiceClient(
      ClientChannel(
        "192.168.158.29",
        port: 8080,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      ),
    );
  }

  Stream<Colodigit> getDigitStream() async* {
    colodigitStream = client.getColodigits(NoParamIO());
    await for (Colodigit colodigit in colodigitStream) {
      yield colodigit;
    }
  }

  void closeDigitStream() {
    colodigitStream.cancel();
  }

  Future<void> addDigit(int digit, Color color) async {
    await client.addColodigit(
      Colodigit(
        digit: digit,
        r: [color.red],
        g: [color.green],
        b: [color.blue],
      ),
    );
  }
}
