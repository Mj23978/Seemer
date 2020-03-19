import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class TestViewModel extends ChangeNotifier {
  static final userHive = Hive.box("user");

  final String userNumber = userHive.get("name");
}
