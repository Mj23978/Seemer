import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../views/app_setting_view/app_setting_view.dart';
import '../../views/error_view/error_view.dart';
import '../../views/rflutter_view/rflutter_view.dart';
import '../../views/showcase_view/showcase_view.dart';
import '../../views/theme_view/first_theme_view.dart';
import '../../views/theme_view/second_theme_view.dart';

var errorAboutHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return ErrorAboutPage(
    message: int.tryParse(params['message']?.first),
    text: params['text']?.first,
  );
});

var appSettingHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return AppSettingPage();
});

var rflutterHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return RFlutterPage();
});

var showcaseHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return FinalShowcasePage();
});

var firstThemeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return FirstThemePage();
});

var secondThemeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return SecondThemePage();
});
