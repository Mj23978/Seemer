import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'chat_utils.dart';

class OpenSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatUtils.getNTPWrappedWidget(Material(
      // color: enigmaBlack,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: RaisedButton(
            color: Colors.blue,
            // textColor: enigmaWhite,
            onPressed: () {
              PermissionHandler().openAppSettings();
            },
            child: Text('Open App Settings'),
          ),
        ),
      ),
    ));
  }
}
