// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CallLog _$$_CallLogFromJson(Map<String, dynamic> json) => _$_CallLog(
      id: json['id'] as String,
      status: $enumDecode(_$CallLogStatusEnumMap, json['status']),
      receiverPic: json['receiverPic'] as String?,
      callerPic: json['callerPic'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_CallLogToJson(_$_CallLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$CallLogStatusEnumMap[instance.status],
      'receiverPic': instance.receiverPic,
      'callerPic': instance.callerPic,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$CallLogStatusEnumMap = {
  CallLogStatus.dialled: 'dialled',
  CallLogStatus.missed: 'missed',
  CallLogStatus.recieved: 'recieved',
};
