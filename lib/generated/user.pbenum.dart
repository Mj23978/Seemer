///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class StatusType extends $pb.ProtobufEnum {
  static const StatusType Online = StatusType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Online');
  static const StatusType Away = StatusType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Away');
  static const StatusType Playing = StatusType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Playing');
  static const StatusType Offline = StatusType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Offline');

  static const $core.List<StatusType> values = <StatusType> [
    Online,
    Away,
    Playing,
    Offline,
  ];

  static final $core.Map<$core.int, StatusType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StatusType? valueOf($core.int value) => _byValue[value];

  const StatusType._($core.int v, $core.String n) : super(v, n);
}

