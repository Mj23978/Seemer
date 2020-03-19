import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../../config/routing/app_route.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "404",
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
              child: Text("Return"),
              color: Colors.pink,
              onPressed: () {
                var transition = (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
                  return ScaleTransition(
                    scale: animation,
                    child: RotationTransition(
                      turns: animation,
                      child: child,
                    ),
                  );
                };
                MyAppRoute.router.navigateTo(
                  context,
                  "/error/aboute?message=12&text=Hello",
                  transition: TransitionType.custom,
                  transitionBuilder: transition,
                  transitionDuration: const Duration(milliseconds: 400),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ErrorAboutPage extends StatelessWidget {
  static final routeName = '/error/aboute';
  final String text;
  final int message;

  ErrorAboutPage({
    @required this.message,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.pink),
        elevation: 0,
      ),
      body: Center(
        child: Text(
          "$text $message",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
