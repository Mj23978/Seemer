///
//  Generated code. Do not modify.
//  source: app.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class LobbyAction extends $pb.ProtobufEnum {
  static const LobbyAction Accept = LobbyAction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Accept');
  static const LobbyAction Denied = LobbyAction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Denied');

  static const $core.List<LobbyAction> values = <LobbyAction> [
    Accept,
    Denied,
  ];

  static final $core.Map<$core.int, LobbyAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LobbyAction? valueOf($core.int value) => _byValue[value];

  const LobbyAction._($core.int v, $core.String n) : super(v, n);
}

class ChannelReq_ChannelAction extends $pb.ProtobufEnum {
  static const ChannelReq_ChannelAction Add = ChannelReq_ChannelAction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Add');
  static const ChannelReq_ChannelAction Delete = ChannelReq_ChannelAction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Delete');

  static const $core.List<ChannelReq_ChannelAction> values = <ChannelReq_ChannelAction> [
    Add,
    Delete,
  ];

  static final $core.Map<$core.int, ChannelReq_ChannelAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChannelReq_ChannelAction? valueOf($core.int value) => _byValue[value];

  const ChannelReq_ChannelAction._($core.int v, $core.String n) : super(v, n);
}

