import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import '../config/db/user_hive.dart';
import 'app_provider.dart';
import 'auth_provider.dart';
import 'logger.dart';
import 'notifiers/splash_provider.dart';

final ProviderFamily<Logger, String> loggerProvider =
    Provider.family<Logger, String>((ref, scope) {
  return getLogger(scope);
});

final appProvider = ChangeNotifierProvider<AppProvider>((ref) {
  return AppProvider();
});

final userHiveProvider = Provider<UserHive>((ref) => UserHive());

final authProvider = Provider<AuthProvider>((ref) =>
    AuthProvider(ref.read(userHiveProvider), ref.read(appProvider)));

final splashProvider =
    StateNotifierProvider<SplashNotifier, SplashState>((ref) {
  return SplashNotifier();
});
