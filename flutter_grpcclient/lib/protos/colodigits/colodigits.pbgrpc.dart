///
//  Generated code. Do not modify.
//  source: colodigits.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'colodigits.pb.dart' as $0;
export 'colodigits.pb.dart';

class ColodigitServiceClient extends $grpc.Client {
  static final _$addColodigit = $grpc.ClientMethod<$0.Colodigit, $0.Colodigit>(
      '/ColodigitService/AddColodigit',
      ($0.Colodigit value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Colodigit.fromBuffer(value));
  static final _$deleteColodigit =
      $grpc.ClientMethod<$0.ColodigitID, $0.NoParamIO>(
          '/ColodigitService/DeleteColodigit',
          ($0.ColodigitID value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.NoParamIO.fromBuffer(value));
  static final _$modifyColodigit =
      $grpc.ClientMethod<$0.Colodigit, $0.NoParamIO>(
          '/ColodigitService/ModifyColodigit',
          ($0.Colodigit value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.NoParamIO.fromBuffer(value));
  static final _$getColodigits = $grpc.ClientMethod<$0.NoParamIO, $0.Colodigit>(
      '/ColodigitService/GetColodigits',
      ($0.NoParamIO value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Colodigit.fromBuffer(value));

  ColodigitServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Colodigit> addColodigit($0.Colodigit request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addColodigit, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoParamIO> deleteColodigit($0.ColodigitID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteColodigit, request, options: options);
  }

  $grpc.ResponseFuture<$0.NoParamIO> modifyColodigit($0.Colodigit request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$modifyColodigit, request, options: options);
  }

  $grpc.ResponseStream<$0.Colodigit> getColodigits($0.NoParamIO request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getColodigits, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ColodigitServiceBase extends $grpc.Service {
  $core.String get $name => 'ColodigitService';

  ColodigitServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Colodigit, $0.Colodigit>(
        'AddColodigit',
        addColodigit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Colodigit.fromBuffer(value),
        ($0.Colodigit value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ColodigitID, $0.NoParamIO>(
        'DeleteColodigit',
        deleteColodigit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ColodigitID.fromBuffer(value),
        ($0.NoParamIO value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Colodigit, $0.NoParamIO>(
        'ModifyColodigit',
        modifyColodigit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Colodigit.fromBuffer(value),
        ($0.NoParamIO value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NoParamIO, $0.Colodigit>(
        'GetColodigits',
        getColodigits_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.NoParamIO.fromBuffer(value),
        ($0.Colodigit value) => value.writeToBuffer()));
  }

  $async.Future<$0.Colodigit> addColodigit_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Colodigit> request) async {
    return addColodigit(call, await request);
  }

  $async.Future<$0.NoParamIO> deleteColodigit_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ColodigitID> request) async {
    return deleteColodigit(call, await request);
  }

  $async.Future<$0.NoParamIO> modifyColodigit_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Colodigit> request) async {
    return modifyColodigit(call, await request);
  }

  $async.Stream<$0.Colodigit> getColodigits_Pre(
      $grpc.ServiceCall call, $async.Future<$0.NoParamIO> request) async* {
    yield* getColodigits(call, await request);
  }

  $async.Future<$0.Colodigit> addColodigit(
      $grpc.ServiceCall call, $0.Colodigit request);
  $async.Future<$0.NoParamIO> deleteColodigit(
      $grpc.ServiceCall call, $0.ColodigitID request);
  $async.Future<$0.NoParamIO> modifyColodigit(
      $grpc.ServiceCall call, $0.Colodigit request);
  $async.Stream<$0.Colodigit> getColodigits(
      $grpc.ServiceCall call, $0.NoParamIO request);
}
