import 'dart:async';

import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

import 'core/providers.dart';
import 'network/helpers/grpc_repo.dart';
import 'utils/keys.dart';
import 'views/404/not_found_view.dart';
import 'views/routes.dart';
import 'widgets/init_builder.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // setPathUrlStrategy();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  if (!kIsWeb) {
    final appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
  } else {
    Hive.initFlutter();
  }
  Logger.level = Level.debug;

  await Hive.openBox(DBKeys.hive_user_email);
  await Hive.openBox(DBKeys.hive_users);
  await Hive.openBox(DBKeys.hive_config);
  initConfig();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale("en", "US"), Locale("fa", "IR")],
      path: 'assets/i18n',
      fallbackLocale: Locale("en", "US"),
      child: ProviderScope(
        child: MainApp(),
      ),
    ),
  );
}

class MainApp extends HookConsumerWidget {
  MainApp({
    Key? key,
  }) : super(key: key);

  final parser = BeamerParser();
  final router = BeamerDelegate(
    initialPath: '/home',
    locationBuilder: BeamerLocationBuilder(beamLocations: [
      HomeLocation(),
    ]),
    routeListener: (info, delegate) {
      print("[Beamer] ${info.location}");
    },
    notFoundPage: BeamPage(key: ValueKey("404"), child: NotFoundPage()),
  );

  Future<void> init(GRPCRepo repo) async {
    await repo.init();
  }

  @override
  Widget build(BuildContext context, ref) {
    final grpc = ref.watch(grpcProvider);
    // final router = initRouter(context);
    return InitBuilder.arg1<Future<void>, GRPCRepo>(
      getter: init,
      arg: grpc,
      builder: (context, _) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationParser: parser,
          title: "Starter",
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            ...context.localizationDelegates,
          ],
          routerDelegate: router,
          backButtonDispatcher: BeamerBackButtonDispatcher(delegate: router),
        );
      }
    );
  }
}

initConfig() {
  Box conf = Hive.box(DBKeys.hive_config);
  if (!conf.get("initialized", defaultValue: false)) {
    conf.put("initialized", true);
    conf.put("local", const Locale("en", "US").toString());
  }
}
