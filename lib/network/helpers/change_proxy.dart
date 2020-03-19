import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../utils/constants.dart';

changeProxy() async {
  final jsonProxy = await http.get("https://api.getproxylist.com/proxy");
  final proxy = json.decode(jsonProxy.body);
  APP_PROXY = "${proxy["ip"]}:${proxy["port"]}";
  print(APP_PROXY);
  return APP_PROXY;
}
