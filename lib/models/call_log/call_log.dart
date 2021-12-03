import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums.dart';

part 'call_log.freezed.dart';
part 'call_log.g.dart';

@freezed
class CallLog with _$CallLog {

  const factory CallLog({
    required String id,
    required CallLogStatus status,
    String? receiverPic,
    String? callerPic,
    required DateTime createdAt,
  }) = _CallLog;

  factory CallLog.fromJson(Map<String, dynamic> json) => _$CallLogFromJson(json);

}