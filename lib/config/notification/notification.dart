import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notifications {
  final channelId = 'testNotifications';
  final channelName = 'Test Notifications';
  final channelDescription = 'Test Notification Channel';

  final _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  late NotificationDetails _platformChannelInfo;
  var notificationId = 100;

  void init() {
    var initializationSettingsAndroid = const AndroidInitializationSettings('mipmap/ic_launcher');
    var initializationSettingsIOS =  IOSInitializationSettings(
      onDidReceiveLocalNotification: (int id, String? title, String? body, String? payload) { return null; }
    );
    var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, 
      iOS: initializationSettingsIOS,
    );
    _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: onSelectNotification
    );

    // setup a channel for notifications
    var androidPlatformChannelInfo = AndroidNotificationDetails(
      channelId, 
      channelName, 
      channelDescription: channelDescription,
      importance: Importance.high, 
      priority: Priority.high, 
      ticker: 'ticker');

    var iOSPlatformChannelInfo = const IOSNotificationDetails();
    _platformChannelInfo = NotificationDetails(
      android: androidPlatformChannelInfo, 
      iOS: iOSPlatformChannelInfo
    );

  }

  Future onSelectNotification(var payload) async {
    if (payload != null) {
      print('notificationSelected: payload=$payload.');
    }
  }

  Future<void> sendNotificationNow(String title, String body, String payload) async {
    _flutterLocalNotificationsPlugin.show(
      notificationId++, 
      title, 
      body, 
      _platformChannelInfo,
      payload: payload
    );
  }

  Future<List<PendingNotificationRequest>> getPendingNotificationRequests() async {
    return _flutterLocalNotificationsPlugin.pendingNotificationRequests();
  }
}