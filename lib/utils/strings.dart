import 'package:flutter/material.dart';

class Strings {
  // Generic strings
  static const String ok = 'OK';
  static const String cancel = 'Cancel';

  // Logout
  static const String logout = 'Logout';
  static const String logoutAreYouSure =
      'Are you sure that you want to logout?';
  static const String logoutFailed = 'Logout failed';

  // Sign In Page
  static const String signIn = 'Sign in';
  static const String signInWithEmailPassword =
      'Sign in with email and password';
  static const String signInWithEmailLink = 'Sign in with email link';
  static const String signInWithFacebook = 'Sign in with Facebook';
  static const String signInWithGoogle = 'Sign in with Google';
  static const String goAnonymous = 'Go anonymous';
  static const String or = 'or';

  // Email & Password page
  static const String register = 'Register';
  static const String forgotPassword = 'Forgot password';
  static const String forgotPasswordQuestion = 'Forgot password?';
  static const String createAnAccount = 'Create an account';
  static const String needAnAccount = 'Need an account? Register';
  static const String haveAnAccount = 'Have an account? Sign in';
  static const String signInFailed = 'Sign in failed';
  static const String registrationFailed = 'Registration failed';
  static const String passwordResetFailed = 'Password reset failed';
  static const String sendResetLink = 'Send Reset Link';
  static const String backToSignIn = 'Back to sign in';
  static const String resetLinkSentTitle = 'Reset link sent';
  static const String resetLinkSentMessage =
      'Check your email to reset your password';
  static const String emailLabel = 'Email';
  static const String emailHint = 'test@test.com';
  static const String password8CharactersLabel = 'Password (8+ characters)';
  static const String passwordLabel = 'Password';
  static const String invalidEmailErrorText = 'Email is invalid';
  static const String invalidEmailEmpty = 'Email can\'t be empty';
  static const String invalidPasswordTooShort = 'Password is too short';
  static const String invalidPasswordEmpty = 'Password can\'t be empty';

  // Email link page
  static const String submitEmailAddressLink =
      'Submit your email address to receive an activation link.';
  static const String checkYourEmail = 'Check your email';
  static String activationLinkSent(String email) =>
      'We have sent an activation link to $email';
  static const String errorSendingEmail = 'Error sending email';
  static const String sendActivationLink = 'Send activation link';
  static const String activationLinkError = 'Email activation error';
  static const String submitEmailAgain =
      'Please submit your email address again to receive a new activation link.';
  static const String userAlreadySignedIn =
      'Received an activation link but you are already signed in.';
  static const String isNotSignInWithEmailLinkMessage =
      'Invalid activation link';

  // Home page
  static const String homePage = 'Home Page';

  // Developer menu
  static const String developerMenu = 'Developer menu';
  static const String authenticationType = 'Authentication type';
  static const String firebase = 'Firebase';
  static const String mock = 'Mock';
}

final enigmaBlack = Color(0xFF1E1E1E);
final enigmaBlue = Color(0xFF007ACC);
final enigmaGreen = Color(0xFF27C784);
final enigmaWhite = Color(0xFFE0E0E0);
const IS_TOKEN_GENERATED = 'isTokenGenerated';
const NOTIFICATION_TOKENS = 'notificationTokens';
const PHOTO_URL = 'photoUrl';
const USERS = 'users';
const MESSAGES = 'messages';
const ANSWER_TRIES = 'answerTries';
const PASSCODE_TRIES = 'passcodeTries';
const ABOUT_ME = 'aboutMe';
const NICKNAME = 'nickname';
const TYPE = 'type';
const FROM = 'from';
const TO = 'to';
const CONTENT = 'content';
const CHATS_WITH = 'chatsWith';
const CHAT_STATUS = 'chatStatus';
const LAST_SEEN = 'lastSeen';
const PHONE = 'phone';
const ID = 'id';
const ANSWER = 'answer';
const QUESTION = 'question';
const PASSCODE = 'passcode';
const HIDDEN = 'hidden';
const LOCKED = 'locked';
const DELETE_UPTO = 'deleteUpto';
const TIMESTAMP = 'timestamp';
const LAST_ANSWERED = 'lastAnswered';
const LAST_ATTEMPT = 'lastAttempt';
const AUTHENTICATION_TYPE = 'authenticationType';
const CACHED_CONTACTS = 'cachedContacts';
const SAVED = 'saved';
const ALIAS_NAME = 'aliasName';
const ALIAS_AVATAR = 'aliasAvatar';
const PUBLIC_KEY = 'publicKey';
const PRIVATE_KEY = 'privateKey';
const PRIVACY_POLICY_URL = 'https://amitjoki.github.io/Enigma/Privacy_Policy';
const COUNTRY_CODE = 'countryCode';
const WALLPAPER = 'wallpaper';
const CRC_SEPARATOR = '&';
const TRIES_THRESHOLD = 3;
const TIME_BASE = 2;
