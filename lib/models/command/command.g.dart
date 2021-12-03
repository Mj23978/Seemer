// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Command _$$_CommandFromJson(Map<String, dynamic> json) => _$_Command(
      name: json['name'] as String,
      description: json['description'] as String,
      args: json['args'] as String,
    );

Map<String, dynamic> _$$_CommandToJson(_$_Command instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'args': instance.args,
    };
