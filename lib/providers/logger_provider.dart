import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoggerProvider extends ChangeNotifier {
  final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 1,
      lineLength: 3,
    ),
  );
}
