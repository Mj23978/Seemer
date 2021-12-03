import 'package:flutter/material.dart';
import '../models/enums.dart';

class Constants {
  static const String endpoint = "http://localhost/v1";
  static const String transactionCollectionID = "61772767d6cc5";
  static const String callLogsCollectionID = "61776a3b31b1c";
  static const String homeChatsCollectionID = "617ac672305da";
  static const String chatsCollectionID = "617b59e2bd30d";
  static const String messagesCollectionID = "617b5ac47052f";
  static const String projectId = "61771677862e2";
  static const String firebaseProjectURL =
      'https://skype-clone-251ce.firebaseio.com/';
  static const String androidMinimumVersion = "20";
  static const String AppName = "com.example.seemer";
  static const AuthServiceType authServiceType = AuthServiceType.firebase;
}

class NotificationConst {
  static const channelId = 'testNotifications';
  static const channelName = 'Test Notifications';
  static const channelDescription = 'Test Notification Channel';
}
