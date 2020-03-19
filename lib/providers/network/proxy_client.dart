import 'package:flutter/material.dart';

import 'package:http/io_client.dart' as http;
import 'dart:io';

class AppBaseClient extends ChangeNotifier {
  http.IOClient myHttpClient() {
    return http.IOClient(
      HttpClient()..connectionTimeout = Duration(seconds: 20),
    );
  }
}
