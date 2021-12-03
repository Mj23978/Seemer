// import 'dart:convert';

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import '../../utils/constants.dart';

// class LocalNotification {
//   final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   NotificationDetails _platformChannelInfo;

//   void init() {
//     var initializationSettingsAndroid =
//         new AndroidInitializationSettings('mipmap/ic_launcher');
//     var initializationSettingsIOS = IOSInitializationSettings(
//         onDidReceiveLocalNotification:
//             (int id, String? title, String? body, String? payload) {
//       return null;
//     });
//     var initializationSettings = InitializationSettings(
//         initializationSettingsAndroid, initializationSettingsIOS);
//     _flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
// //        onSelectNotification: onSelectNotification
//     );

//     // setup a channel for notifications
//     var androidPlatformChannelInfo = AndroidNotificationDetails(
//       NotificationConst.channelId,
//       NotificationConst.channelName,
//       NotificationConst.channelDescription,
//       importance: Importance.Max,
//       priority: Priority.High,
//       ticker: 'ticker',
//     );

//     var iOSPlatformChannelInfo = IOSNotificationDetails();
//     _platformChannelInfo =
//         NotificationDetails(androidPlatformChannelInfo, iOSPlatformChannelInfo);
//   }

//   void configLocalNotification() {
//     var initializationSettingsAndroid =
//         AndroidInitializationSettings('mipmap/ic_launcher');
//     var initializationSettingsIOS = IOSInitializationSettings();
//     var initializationSettings = InitializationSettings(
//         initializationSettingsAndroid, initializationSettingsIOS);
//     _flutterLocalNotificationsPlugin.initialize(initializationSettings);
//   }

//   void showNotification(message) async {
//     AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       Constants.AppName,
//       'MyChat',
//       'Your Channel Description',
//       playSound: true,
//       enableVibration: true,
//       importance: Importance.Max,
//       priority: Priority.High,
//     );
//     IOSNotificationDetails iOSPlatformChannelSpecifics =
//         IOSNotificationDetails();
//     NotificationDetails platformChannelSpecifics = NotificationDetails(
//         androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
//     await _flutterLocalNotificationsPlugin.show(0, message['title'].toString(),
//         message['body'].toString(), platformChannelSpecifics,
//         payload: json.encode(message));
//   }

//   Future<void> sendNotificationNow(
//       String title, String body, String payload) async {
//     _flutterLocalNotificationsPlugin
//         .show(100, title, body, _platformChannelInfo, payload: payload);
//   }
// }
