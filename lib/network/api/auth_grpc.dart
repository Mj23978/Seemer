import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';

import '../../generated/user.pb.dart';
import '../../generated/user.pbgrpc.dart';
import '../helpers/grpc_base.dart';


class AuthGrpcClient extends GRPCBase {
  late UserServiceClient stub;
  Logger logger;

  AuthGrpcClient({
    required this.logger,
    required ClientChannel channel,
    required CallOptions options,
    required Box configBox,
  }) : super(channel: channel, options: options, configBox: configBox);

  @override
  Future<void> init() async {
    try {
      stub = UserServiceClient(
        channel,
        options: CallOptions(
          timeout: const Duration(seconds: 30),
        ),
      );
    } catch (err) {
      logger.e(err);
    }
  }

  @override
  Future<void> dispose() async {
    await channel.shutdown();
  }

  Future<void> signUp({
    String? username,
    String? password,
    String? email,
    String? token,
  }) async {
    final user = User();
    try {
      if (token != null && username == null) {
        user.token = token;
        SignUpRequest request = SignUpRequest()..user = user;
        final res = await stub.signUp(request);
        configBox.put("user_token", token);
        configBox.put("token", res.token);
        configBox.put("refresh_token", res.refreshToken);
        logger.i("SignUp Succssuful With Token");
      } else if (username != null && password != null) {
        user.username = username;
        user.password = password;
        SignUpRequest request = SignUpRequest()..user = user;
        final res = await stub.signUp(request);
        configBox.put("username", username);
        configBox.put("password", password);
        configBox.put("token", res.token);
        configBox.put("refresh_token", res.refreshToken);
        logger.i("SignUp Succssuful With Username & Password");
      }
    } catch (err) {
      logger.e(err);
    }
  }

  Future<List<String>> refreshToken(
      {String? refreshToken, String? username, String? password}) async {
    final List<String> result = [];
    try {
      RefreshTokenRequest request = RefreshTokenRequest();
      if (refreshToken != null) {
        request..refreshToken = refreshToken;
      } else if (username != null && password != null) {
        request
          ..user = UP()
          ..user.username = username
          ..user.password = password;
      }
      final su = stub.refreshToken(request);
      final res = await su;
      logger.i(res);
      result.addAll([res.token, res.refreshToken]);
    } catch (err) {
      if (err.runtimeType == GrpcError) {
        GrpcError error = err as GrpcError;
        if (error.message == "Invalid Refresh Token") {
          print("Invalid Token");
          result.add("try");
        }
      } else {
        logger.e(err);
      }
    }
    return result;
  }
}
