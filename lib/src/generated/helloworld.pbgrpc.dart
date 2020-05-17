///
//  Generated code. Do not modify.
//  source: helloworld.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'helloworld.pb.dart' as $0;
export 'helloworld.pb.dart';

class GreeterClient extends $grpc.Client {
  static final _$sayHello = $grpc.ClientMethod<$0.HelloRequest, $0.HelloReply>(
      '/helloworld.Greeter/SayHello',
      ($0.HelloRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HelloReply.fromBuffer(value));
  static final _$sayRepeatHello =
      $grpc.ClientMethod<$0.RepeatHelloRequest, $0.HelloReply>(
          '/helloworld.Greeter/SayRepeatHello',
          ($0.RepeatHelloRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.HelloReply.fromBuffer(value));
  static final _$sayHelloAfterDelay =
      $grpc.ClientMethod<$0.HelloRequest, $0.HelloReply>(
          '/helloworld.Greeter/SayHelloAfterDelay',
          ($0.HelloRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.HelloReply.fromBuffer(value));

  GreeterClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.HelloReply> sayHello($0.HelloRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$sayHello, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.HelloReply> sayRepeatHello(
      $0.RepeatHelloRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sayRepeatHello, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.HelloReply> sayHelloAfterDelay(
      $0.HelloRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sayHelloAfterDelay, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class GreeterServiceBase extends $grpc.Service {
  $core.String get $name => 'helloworld.Greeter';

  GreeterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.HelloRequest, $0.HelloReply>(
        'SayHello',
        sayHello_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HelloRequest.fromBuffer(value),
        ($0.HelloReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RepeatHelloRequest, $0.HelloReply>(
        'SayRepeatHello',
        sayRepeatHello_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.RepeatHelloRequest.fromBuffer(value),
        ($0.HelloReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HelloRequest, $0.HelloReply>(
        'SayHelloAfterDelay',
        sayHelloAfterDelay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HelloRequest.fromBuffer(value),
        ($0.HelloReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.HelloReply> sayHello_Pre(
      $grpc.ServiceCall call, $async.Future<$0.HelloRequest> request) async {
    return sayHello(call, await request);
  }

  $async.Stream<$0.HelloReply> sayRepeatHello_Pre($grpc.ServiceCall call,
      $async.Future<$0.RepeatHelloRequest> request) async* {
    yield* sayRepeatHello(call, await request);
  }

  $async.Future<$0.HelloReply> sayHelloAfterDelay_Pre(
      $grpc.ServiceCall call, $async.Future<$0.HelloRequest> request) async {
    return sayHelloAfterDelay(call, await request);
  }

  $async.Future<$0.HelloReply> sayHello(
      $grpc.ServiceCall call, $0.HelloRequest request);
  $async.Stream<$0.HelloReply> sayRepeatHello(
      $grpc.ServiceCall call, $0.RepeatHelloRequest request);
  $async.Future<$0.HelloReply> sayHelloAfterDelay(
      $grpc.ServiceCall call, $0.HelloRequest request);
}
