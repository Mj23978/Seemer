import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ConversationViewModel extends ChangeNotifier {
  final conversation = Hive.box("messages");
}
