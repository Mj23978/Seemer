import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'auth/auth_view.dart';
import 'auth/login.dart';
import 'auth/signup.dart';
import 'settings/settings_page.dart';
import 'splash_view.dart';
import 'templates/home_template_view.dart';


class HomeLocation extends BeamLocation<BeamState> {

  @override
  List<Pattern> get pathPatterns => [
    '/',
    '/home',  
    '/auth',  
    '/auth/login',
    '/auth/signup',
    '/settings',
  ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      // BeamPage(key: ValueKey("Splash"), child: SplashView()),
      // if (state.uri.pathSegments.contains("home"))
        BeamPage(key: ValueKey("Home"), child: HomeTemplateView()),
      if (state.uri.pathSegments.contains("auth"))
        BeamPage(key: ValueKey("Auth"), child: AuthView()),
        if (state.uri.pathSegments.contains("loign"))
          BeamPage(key: ValueKey("Auth"), child: LoginPage()),
        if (state.uri.pathSegments.contains("signup"))
          BeamPage(key: ValueKey("Auth"), child: SignupPage()),
      if (state.uri.pathSegments.contains("settings"))
        BeamPage(key: ValueKey("Settings"), child: SettingsView()),
    ];
  }
}
