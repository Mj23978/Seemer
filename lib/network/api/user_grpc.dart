import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';

import '../../generated/user.pbgrpc.dart';
import '../../models/user/user.dart' as m;
import '../../network/helpers/convert.dart';
import '../../utils/helpers.dart';
import '../helpers/grpc_base.dart';

class UserGrpcClient extends GRPCBase {
  late UserServiceClient stub;
  Logger logger;
  Iterable<ClientInterceptor>? interceptors;

  UserGrpcClient({
    required this.logger,
    required ClientChannel channel,
    required CallOptions options,
    required Box configBox,
    this.interceptors,
  }) : super(channel: channel, options: options, configBox: configBox);

  @override  Future<void> init() async {
    try {
      stub = UserServiceClient(
        channel,
        options: options,
        interceptors: interceptors,
      );
    } catch (err) {
      logger.e(err);
    }
  }

  @override
  Future<void> dispose() async {
    await channel.shutdown();
  }

  Future<void> getUser(String id) async {
    GetUserRequest request = GetUserRequest()..id = id;
    try {
      final su = stub.getUser(request);
      final res = await su;
      logger.d(res);
    } catch (err) {
      if (err == GrpcError) {
        logger.i("Grpc Error");
      }
      logger.e(err);
    }
  }

  Future<void> status(String id, String status) async {
    StatusRequest request = StatusRequest()
      ..id = id
      ..status = enumFromString(status, StatusType);
    try {
      final su = stub.status(request);
      final res = await su;
      logger.d(res);
    } catch (err) {
      logger.e(err);
    }
  }

  Future<void> updateUser(m.User user) async {
    UpdateUserRequest request = UpdateUserRequest()..user = toGrpcUser(user);
    try {
      final su = stub.updateUser(request);
      final res = await su;
      logger.d(res);
    } catch (err) {
      logger.e(err);
    }
  }
}
