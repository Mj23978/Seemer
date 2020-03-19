import 'dart:io';

import '../../utils/constants.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext securityContext) {
    print("Proxy Not Null");
    return super.createHttpClient(securityContext)
      ..findProxy = (url) {
        print("$APP_PROXY");
        print(url);
        return "PROXY $APP_PROXY";
      };
  }
}
