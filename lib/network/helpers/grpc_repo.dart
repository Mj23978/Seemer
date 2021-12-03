import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:hive/hive.dart';


enum MafiaStubs { app, auth, user, player, game, lobby }

class GRPCRepo extends ChangeNotifier {
  final ClientChannel? globalChannel;
  final Map<MafiaStubs, ClientChannel>? channels;
  final ClientInterceptor? globalInterceptor;
  final Map<MafiaStubs, ClientInterceptor>? interceptors;
  final Box? configBox;

  GRPCRepo({
    this.globalChannel,
    this.channels,
    this.globalInterceptor,
    this.interceptors,
    this.configBox,
  }) {
    print("");
  }
}

// ClientChannel(
//       '10.0.2.2',
//       port: 8034,
//       options: const ChannelOptions(
//         credentials: ChannelCredentials.insecure(),
//       ),
//     );