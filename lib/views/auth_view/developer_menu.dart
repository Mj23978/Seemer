import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../network/firebase/auth/auth_service_type_selector.dart';
//import '../../../utils/keys.dart';
import '../../utils/strings.dart';

class DeveloperMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Drawer(
        child: Column(children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const <Widget>[
                Text(
                  Strings.developerMenu,
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
          ),
          _buildOptions(context),
        ]),
      ),
    );
  }

  Widget _buildOptions(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          AuthServiceTypeSelector(),
        ],
      ),
    );
  }
}
