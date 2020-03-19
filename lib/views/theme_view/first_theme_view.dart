import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

import 'second_theme_view.dart';

class FirstThemePage extends StatefulWidget {
  static final routeName = '/theme/first';

  @override
  _FirstThemePageState createState() => _FirstThemePageState();
}

class _FirstThemePageState extends State<FirstThemePage>
    with AfterLayoutMixin<FirstThemePage> {
  /// Initialize platform state.
//  Future<void> initPlatformState() async {
//    if (!mounted) return;
//  }

  ///  After Layout Plugin
  @override
  void afterFirstLayout(BuildContext context) {
//    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Starter'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("Next Theme"),
            onPressed: ThemeProvider.controllerOf(context).nextTheme,
          ),
          RaisedButton(
            child: Text("Theme Dialog"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => ThemeConsumer(child: ThemeDialog()));
            },
          ),
          RaisedButton(
            child: Text("Second Screen"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ThemeConsumer(child: SecondThemePage()),
                ),
              );
            },
          ),
        ],
      )),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
