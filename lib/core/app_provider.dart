import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/home_chat/home_chat.dart';
import '../utils/constants.dart';
import '../utils/keys.dart';

class AppProvider extends ChangeNotifier {

  Box conf = Hive.box(DBKeys.hive_config);

  int selectedPage = 0;
  List<dynamic> items = [];
  List<HomeChat> chats = [];

  AppProvider() {
  }

  void changePage(int index) {
    selectedPage = index;
    notifyListeners();
  }

  void addItem(dynamic item) {
    items.add(item);
    notifyListeners();
  }

  void removeItem(dynamic item) {
    items.removeWhere((it) => it['\$id'] == item['\$id']);
    notifyListeners();
  }

}
