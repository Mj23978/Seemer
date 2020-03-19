import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class SecondThemePage extends StatelessWidget {
  static final routeName = '/theme/second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Next Theme"),
          onPressed: ThemeProvider.controllerOf(context).nextTheme,
        ),
      ),
    );
  }
}
