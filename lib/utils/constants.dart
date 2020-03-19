import 'package:flutter/material.dart';

class Constants {
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.blue;
  static Color darkAccent = Colors.blueAccent;
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;

  // TODO: Replace this with your firebase project URL
  static const String firebaseProjectURL =
      'https://flutter-starter-93823.firebaseapp.com/';
  static const String androidMinimumVersion = "21";
  static const String AppName = "com.fluttensor.my_chat";
}

class NotificationConst {
  static const channelId = 'testNotifications';
  static const channelName = 'Test Notifications';
  static const channelDescription = 'Test Notification Channel';
}

// ignore: non_constant_identifier_names
String APP_PROXY;
