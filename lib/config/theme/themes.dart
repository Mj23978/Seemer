import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

import '../../utils/constants.dart';

final light = ThemeData.light();
final dark = ThemeData.dark();

AppTheme firstCustomTheme() {
  return AppTheme(
    id: "first_custom_theme",
    description: "First Custom Color Scheme",
    data: ThemeData(
      accentColor: Colors.yellow,
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.yellow[200],
      buttonColor: Colors.amber,
      dialogBackgroundColor: Colors.yellow,
    ),
  );
}

AppTheme secondCustomTheme() {
  return AppTheme(
    id: "second_custom_theme",
    description: "Second Custom Color Scheme",
    data: dark.copyWith(
      primaryColor: Colors.blue,
      accentColor: Colors.amberAccent,
      accentIconTheme: dark.iconTheme.copyWith(color: Colors.black),
      dialogTheme: const DialogTheme(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      )),
    ),
  );
}

AppTheme lightTheme() {
  return AppTheme(
    id: "light_theme",
    description: "Light Color Scheme",
    data: light.copyWith(
      backgroundColor: Constants.lightBG,
      primaryColor: Constants.lightPrimary,
      accentColor: Constants.lightAccent,
      cursorColor: Constants.lightAccent,
      scaffoldBackgroundColor: Constants.lightBG,
      appBarTheme: AppBarTheme(
        elevation: 0,
        textTheme: TextTheme(
          title: TextStyle(
            color: Constants.darkBG,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    ),
  );
}

AppTheme darkTheme() {
  return AppTheme(
    id: "dark_theme",
    description: "Dark Color Scheme",
    data: dark.copyWith(
      brightness: Brightness.dark,
      backgroundColor: Constants.darkBG,
      primaryColor: Constants.darkPrimary,
      accentColor: Constants.darkAccent,
      scaffoldBackgroundColor: Constants.darkBG,
      cursorColor: Constants.darkAccent,
      appBarTheme: AppBarTheme(
        elevation: 0,
        textTheme: TextTheme(
          title: TextStyle(
            color: Constants.lightBG,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    ),
  );
}
