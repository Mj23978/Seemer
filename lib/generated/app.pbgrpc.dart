///
//  Generated code. Do not modify.
//  source: app.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'app.pb.dart' as $2;
export 'app.pb.dart';

class AppServiceClient extends $grpc.Client {
  static final _$channel = $grpc.ClientMethod<$2.ChannelReq, $2.ChannelRes>(
      '/api.proc.AppService/Channel',
      ($2.ChannelReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ChannelRes.fromBuffer(value));

  AppServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$2.ChannelRes> channel(
      $async.Stream<$2.ChannelReq> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$channel, request, options: options);
  }
}

abstract class AppServiceBase extends $grpc.Service {
  $core.String get $name => 'api.proc.AppService';

  AppServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.ChannelReq, $2.ChannelRes>(
        'Channel',
        channel,
        true,
        true,
        ($core.List<$core.int> value) => $2.ChannelReq.fromBuffer(value),
        ($2.ChannelRes value) => value.writeToBuffer()));
  }

  $async.Stream<$2.ChannelRes> channel(
      $grpc.ServiceCall call, $async.Stream<$2.ChannelReq> request);
}
