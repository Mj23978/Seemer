import 'dart:async';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:my_chat/network/firebase/messaging/messaging_init.dart';
import 'package:my_chat/providers/chat_provider.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/theme_provider.dart';

import 'config/db/user_hive.dart';
import 'config/routing/app_route.dart';
import 'config/routing/routes.dart';
import 'config/theme/themes.dart';
import 'models/firebase/auth_service.dart';
import 'network/firebase/auth/auth_service_adapter.dart';
import 'utils/chat_utils.dart';
import 'utils/constants.dart';
import 'views/main_view/main_view.dart';
// import 'test_view.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (FlutterErrorDetails details) {
    if (ChatUtils.isInDebugMode) {
      // In development mode, simply print to console.
      FlutterError.dumpErrorToConsole(details);
    } else {
      // In production mode, report to the application zone to report to
      // Sentry.
      Zone.current.handleUncaughtError(details.exception, details.stack);
    }
  };

  final router = Router();
  Routes.configureRoutes(router);
  MyAppRoute.router = router;
//  timeDilation = 1.0;

  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  await Hive.openBox('user');
  await Hive.openBox('messages');

  final AuthServiceType initialAuthServiceType = AuthServiceType.mock;

  // Provider.debugCheckInvalidValueType = null;

  runZoned<Future<void>>(() async {
    runApp(
//      GraphQLProvider(
//    client: _client,
//    child: CacheProvider(
//      child:
      MultiProvider(
        providers: [
          Provider<UserHive>(
            create: (_) => UserHive(),
          ),
          Provider<AuthService>(
            create: (_) => AuthServiceAdapter(
              initialAuthServiceType: initialAuthServiceType,
            ),
            dispose: (_, AuthService authService) => authService.dispose(),
          ),
          ChangeNotifierProvider<BaseChatProvider>(
            create: (_) => BaseChatProvider("+989394751549"),
          ),
        ],
        child: MyApp(),
      ),
//    ),
//  )
    );
  }, onError: (error, stackTrace) async {
    // Whenever an error occurs, call the `_reportError` function. This sends
    // Dart errors to the dev console or Sentry depending on the environment.
    await ChatUtils.reportError(error, stackTrace);
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: isDark ? Constants.darkPrimary : Constants.lightPrimary,
      statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
    ));

    _handleCameraAndMic();
    FCMessaging().registerNotification();
  }

  _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
        [PermissionGroup.camera, PermissionGroup.microphone]);
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        defaultThemeId: "light_theme",
        themes: <AppTheme>[
          lightTheme(),
          darkTheme(),
          AppTheme.dark(id: "second_dark_theme"),
          firstCustomTheme(),
          secondCustomTheme(),
        ],
        child: FutureBuilder(
          future: Hive.openBox("user"),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return MaterialApp(home: ThemeConsumer(child: MainView()));
//              if (snapshot.hasError) {
//                // Error Handling
//              } else {
//                return AuthWidgetBuilder(
//                  builder: (ctx, userSnapshot) => MaterialApp(
//                    title: "Starter",
//                    home: AuthWidget(userSnapshot: userSnapshot),
//            builder: (context, child) {
//              return FeatureDiscovery(
//                child: child,
//              );
//            },
//                    onGenerateRoute: MyAppRoute.router.generator,
//                  ),
//                );
//              }
            }
            return MaterialApp(home: Scaffold());
          },
        ));
  }
}
