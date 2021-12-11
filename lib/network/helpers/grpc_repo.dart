import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:hive/hive.dart';
import 'package:dartx/dartx.dart';
import 'package:logger/logger.dart';

import '../../core/app_provider.dart';
import '../api/app_grpc.dart';
import '../api/auth_grpc.dart';
import '../api/user_grpc.dart';
import 'grpc_base.dart';
import 'jwt.dart';

enum AppStubs { app, auth, user }

class GRPCRepo extends ChangeNotifier {
  final ClientChannel globalChannel;
  final ClientInterceptor? globalInterceptor;
  final Map<AppStubs, ClientChannel>? channels;
  final Map<AppStubs, List<ClientInterceptor>>? interceptors;
  final Map<AppStubs, GRPCBase> clients;
  final AppProvider app;
  final CallOptions callOptions;
  final Logger logger;

  GRPCRepo({
    required this.app,
    required this.logger,
    ClientChannel? globalChannel,
    CallOptions? callOptions,
    this.globalInterceptor,
    this.channels,
    this.interceptors,
  })  : globalChannel = globalChannel ??
            ClientChannel(
              "10.0.2.2",
              port: 8043,
              options: ChannelOptions(
                codecRegistry:
                    CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
                connectionTimeout: 15.seconds,
                credentials: ChannelCredentials.insecure(),
              ),
            ),
        callOptions = callOptions ?? CallOptions(timeout: 15.seconds),
        clients = {};

  Future<void> init() async {
    final authClient = AuthGrpcClient(
        channel: channels?[AppStubs.auth] ?? globalChannel,
        configBox: app.conf,
        logger: logger,
        options: callOptions,
        interceptors: [...(interceptors?[AppStubs.auth] ?? [])]);
    await authClient.init();
    final authInterceptor =
        AuthInterceptor(app.conf, logger, authClient.refreshToken);
    final userClient = UserGrpcClient(
        channel: channels?[AppStubs.user] ?? globalChannel,
        configBox: app.conf,
        logger: logger,
        options: callOptions,
        interceptors: [
          authInterceptor,
          ...(interceptors?[AppStubs.user] ?? [])
        ]);
    await userClient.init();
    final appClient = AppGrpcClient(
        channel: channels?[AppStubs.app] ?? globalChannel,
        configBox: app.conf,
        logger: logger,
        options: callOptions,
        interceptors: [
          authInterceptor,
          ...(interceptors?[AppStubs.app] ?? [])
        ]);
    await appClient.init();
    clients[AppStubs.app] = appClient;
    clients[AppStubs.auth] = authClient;
    clients[AppStubs.user] = userClient;
    notifyListeners();
  }
}

class AuthInterceptor implements ClientInterceptor {
  final Box configBox;
  final Logger log;
  final Future<List<String>> Function(
      {String? refreshToken,
      String? username,
      String? password}) refreshTokenFunc;

  AuthInterceptor(this.configBox, this.log, this.refreshTokenFunc);

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
      ClientMethod<Q, R> method,
      Stream<Q> requests,
      CallOptions options,
      ClientStreamingInvoker<Q, R> invoker) {
    () async {
      log.d("start call ${method.path}");
      final exp = configBox.get("token_exp", defaultValue: 1);
      if (exp != null && Jwt.isNearToExpire(exp)) {
        log.i("Token Is Expired");
        await Jwt.saveToken(configBox, refreshTokenFunc);
      }
    }();

    final newOptions = options.mergedWith(CallOptions(metadata: {
      "authorization": configBox.get("token"),
    }));

    final call = invoker(method, requests.map((request) {
      log.d("request: ${request.runtimeType}($request)");
      return request;
    }), newOptions);

    call.headers.then((headers) {
      log.d("headers: $headers");
    });

    call.listen((response) {
      log.d("response value: ${response.runtimeType}($response)");
    }, onError: (err) async {
      if (err.runtimeType == GrpcError) {
        GrpcError error = err as GrpcError;
        if (error.code == 5) {
          log.i("Not Found OR Wrong ID");
        }
      }
    });
    return call;
  }

  @override
  ResponseFuture<R> interceptUnary<Q, R>(ClientMethod<Q, R> method, Q request,
      CallOptions options, ClientUnaryInvoker<Q, R> invoker) {
    () async {
      log.d("start call ${method.path}");
      final exp = configBox.get("token_exp", defaultValue: 1);
      if (exp != null && Jwt.isNearToExpire(exp)) {
        log.i("Token Is Expired");
        await Jwt.saveToken(configBox, refreshTokenFunc);
      }
    }();

    final newOptions = options.mergedWith(CallOptions(metadata: {
      "authorization": configBox.get("token"),
    }));

    final call = invoker(method, request, newOptions);

    call.headers.then((headers) {
      log.d("headers: $headers");
    });

    // call.then((response) {
    //   log.d("response value: ${response.runtimeType}($response)");
    // }, onError: (err) async {
    //   if (err.runtimeType == GrpcError) {
    //     GrpcError error = err as GrpcError;
    //     if (error.code == 5) {
    //       log.i("Not Found OR Wrong ID");
    //     }
    //   }
    // });
    return call;
  }
}

// ClientChannel(
//       '10.0.2.2',
//       port: 8034,
//       options: const ChannelOptions(
//         credentials: ChannelCredentials.insecure(),
//       ),
//     );