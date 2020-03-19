import 'package:flutter/material.dart';
import 'package:app_settings/app_settings.dart';

class AppSettingPage extends StatelessWidget {
  static final routeName = '/app_setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Scrren"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(
              child: Text("Open WIFI"),
              onPressed: () {
                AppSettings.openWIFISettings();
              },
            ),
            FlatButton(
              child: Text("Open Location"),
              onPressed: () {
                AppSettings.openLocationSettings();
              },
            ),
            FlatButton(
              child: Text("Open Security"),
              onPressed: () {
                AppSettings.openSecuritySettings();
              },
            ),
            FlatButton(
              child: Text("Open App Settings"),
              onPressed: () {
                AppSettings.openAppSettings();
              },
            ),
          ],
        ),
      ),
    );
  }
}
