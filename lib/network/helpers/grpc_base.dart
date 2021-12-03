import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc.dart';
import 'package:hive/hive.dart';


abstract class GRPCBase {
  final ClientChannel channel;
  final CallOptions options;
  final Box configBox;

  const GRPCBase({
    required this.configBox,
    required this.channel,
    required this.options,
  });

  void init();
  void dispose();
}


// OLD Interceptor
//     ClientInterceptor _interceptor = (method, requests, options, invoker) {
//   () async {
//     print("start call ${method.path}");
//     final exp = configBox.get("token_exp", defaultValue: 1);
//     if (exp != null && Jwt.isNearToExpire(exp)) {
//       print("Token Is Expired");
//       await Jwt.saveToken(configBox, refreshTokenFunc);
//     }
//   }();

//   final newOptions = options.mergedWith(CallOptions(metadata: {
//     "authorization": configBox.get("token"),
//   }));

//   final call = invoker(method, requests.map((request) {
//     print("request: ${request.runtimeType}($request)");
//     return request;
//   }), newOptions);

//   call.headers.then((headers) {
//     print("headers: $headers");
//   });

//   call.response.listen((response) {
//     print("response value: ${response.runtimeType}($response)");
//   }, onError: (err) async {
//     if (err.runtimeType == GrpcError) {
//       GrpcError error = err as GrpcError;
//       if (error.code == 5) {
//         _logger.i("Not Found OR Wrong ID");
//       }
//     }
//   });
//   return call;
// };