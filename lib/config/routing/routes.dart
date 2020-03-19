import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import './route_handlers.dart';
import '../../views/app_setting_view/app_setting_view.dart';
import '../../views/error_view/error_view.dart';
import '../../views/rflutter_view/rflutter_view.dart';
import '../../views/showcase_view/showcase_view.dart';
import '../../views/theme_view/first_theme_view.dart';
import '../../views/theme_view/second_theme_view.dart';

class Routes {
  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return ErrorPage();
    });
    router.define(AppSettingPage.routeName, handler: appSettingHandler);
    router.define(FirstThemePage.routeName, handler: firstThemeHandler);
    router.define(ErrorAboutPage.routeName, handler: errorAboutHandler);
    router.define(SecondThemePage.routeName, handler: secondThemeHandler);
    router.define(FinalShowcasePage.routeName, handler: showcaseHandler);
    router.define(RFlutterPage.routeName, handler: rflutterHandler);
  }
}
