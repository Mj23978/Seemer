import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:hive/hive.dart';
import 'package:logger/logger.dart';

import '../../generated/app.pbgrpc.dart';
import '../../utils/keys.dart';
import '../helpers/grpc_base.dart';


class AppGrpcClient extends GRPCBase {

  late AppServiceClient stub;
  final StreamController<ChannelReq> appReqController;
  final StreamController<ChannelRes> appResController;
  final Iterable<ClientInterceptor>? interceptors;
  bool isListening = false;
  Logger logger;

  AppGrpcClient({
    required this.logger,
    required ClientChannel channel,
    required CallOptions options,
    required Box configBox,
    this.interceptors,
    StreamController<ChannelReq>? appReqController,
    StreamController<ChannelRes>? appResController,
  }) : appReqController = appReqController ?? StreamController<ChannelReq>(), 
  appResController = appResController ?? StreamController<ChannelRes>(), 
  super(channel: channel, options: options, configBox: configBox);

  @override
  Future<void> init() async {
    try {
      stub = AppServiceClient(
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
    await appReqController.close();
    await appResController.close();
  }

  ChannelReq createChannelReq({
    required String channel,
    required ChannelReq_ChannelAction action,
    bool isLobby = false,
    bool isLobbyRequest = false,
  }) {
    ChannelReq request = ChannelReq();
    request.channel = ChannelReq_Channel()
      ..name = channel
      ..isLobby = isLobby
      ..isLobbyReq
      ..action = action;
    return request;
  }

  Future<void> appChannel(String username, String password) async {
    ChannelReq requestIni = ChannelReq();
    requestIni.login = ChannelReq_Login()
      ..username = username
      ..password = password;

    appReqController.add(requestIni);

    try {
      final call = stub.channel(
        appReqController.stream,
        options: CallOptions(
          timeout: Duration(hours: 1),
        ),
      );
      call.handleError((err) {
        print("Error : $err");
      });
      isListening = true;
      await for (var res in call) {
        if (res.error ==
            "We Cant Find Any User with This Username Try Signing Up") {
          configBox.delete("username");
          configBox.delete("password");
          throw res.error;
        }
        logger.i("Result $res");
        appResController.add(res);
      }
    } catch (err) {
      isListening = false;
      logger.e("ERROR : $err");
    }
  }
}

