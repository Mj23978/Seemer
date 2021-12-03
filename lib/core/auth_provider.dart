import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../config/db/user_hive.dart';
import '../models/user/user.dart';
import 'app_provider.dart';

class AuthProvider extends ChangeNotifier {
  final UserHive userHive;
  final AppProvider app;

  AuthProvider(this.userHive, this.app);

  bool isLoggedIn = false;
  User? user;

  Future<User> login() async {
    if (user != null && isLoggedIn) {
      return user!;
    }
    // final res = await app.account.get();
    isLoggedIn = true;
    // final _user = User(uid: res.$id, displayName: res.name, email: res.email);
    // user = _user;
    final _user = User(uid: "uid");
    return _user;
  }


  Future<bool> createAccount(String name, String email, String password) async {
    // await app.account.create(name: name, email: email, password: password);
    // var verEmail = await app.account.createVerification(
    //   url: 'appwrite.test',
    // );
    // await app.account.createSession(email: email, password: password);
    isLoggedIn = true;
    user = await login();
    notifyListeners();
    return isLoggedIn;
  }

  signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      if (googleAuth.accessToken != null && googleAuth.idToken != null) {
        // await app.account.createOAuth2Session(provider: 'google');
        isLoggedIn = true;
        user = await login();
        notifyListeners();
      } else {
        throw PlatformException(
            code: 'ERROR_MISSING_GOOGLE_AUTH_TOKEN',
            message: 'Missing Google Auth Token');
      }
    } else {
      throw PlatformException(
          code: 'ERROR_ABORTED_BY_USER', message: 'Sign in aborted by user');
    }
  }

  Future<User?> signInAnonymously() async {
    // var session = await app.account.createAnonymousSession();
    // await app.account.createAnonymousSession();
    return User(uid: "");
  }

  Future<void> sendPasswordResetEmail(String email) async {
    // await app.account.createRecovery(email: email, url: "url");
  }

  logout() async {
    try {
      // var res = await app.account.deleteSession(sessionId: 'current');
      isLoggedIn = false;
      user = null;
      notifyListeners();
    } catch (e) {
      notifyListeners();
      throw e;
    }
  }

  Future<bool> loginWithEmailAndPassword(String email, String password) async {
    // m.Session result =
    //     await app.account.createSession(email: email, password: password);
    isLoggedIn = true;
    user = await login();
    notifyListeners();
    return isLoggedIn;
  }
}
