import "dart:convert";

import 'package:hive/hive.dart';

class Jwt {
  static Map<String, dynamic>? parsePayload(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      print('Invalid token.');
    }

    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      print('Invalid payload.');
    }

    return payloadMap;
  }

  static bool isNearToExpire(int timeMiliseconds) {
    final time = DateTime.fromMillisecondsSinceEpoch(
      timeMiliseconds - (120 * 1000), // Expiration Date + 2 Minutes
    );
    return time.isBefore(DateTime.now());
  }

  static bool isExpired(int timeMiliseconds) {
    final time = DateTime.fromMillisecondsSinceEpoch(timeMiliseconds);
    return time.isBefore(DateTime.now());
  }

  static saveToken(Box configBox, Function retryFunction) async {
    List<String> tokens = await retryFunction(
      refreshToken:
          configBox.get("refresh_token", defaultValue: "refresh_token"),
    );
    if (tokens.length != 0 && tokens[0] == "try") {
      print("Retry with Username & Password");
      tokens = await retryFunction(
        password: configBox.get("username", defaultValue: "username12345"),
        username: configBox.get("password", defaultValue: "45password123"),
      );
    } else if (tokens.length == 2) {
      print("Save Tokens in Hive");
      final token = Jwt.parsePayload(tokens[0])!["exp"] as int;
      final refresh = Jwt.parsePayload(tokens[1])!["exp"] as int;
      configBox.put("token_exp", token * 1000);
      configBox.put("token", tokens[0]);
      configBox.put("refresh_token_exp", refresh * 1000);
      configBox.put("refresh_token", tokens[1]);
    }
  }

  static Map<String, dynamic>? parseHeader(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      print('Invalid token.');
    }

    final header = _decodeBase64(parts[0]);
    final headerMap = json.decode(header);
    if (headerMap is! Map<String, dynamic>) {
      print('Invalid header.');
    }

    return headerMap;
  }

  static String _decodeBase64(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += "==";
        break;
      case 3:
        output += '=';
        break;
      default:
        print('Illegal base64 string.');
    }

    return utf8.decode(base64Url.decode(output));
  }
}
