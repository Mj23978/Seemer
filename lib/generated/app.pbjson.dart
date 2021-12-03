///
//  Generated code. Do not modify.
//  source: app.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use lobbyActionDescriptor instead')
const LobbyAction$json = const {
  '1': 'LobbyAction',
  '2': const [
    const {'1': 'Accept', '2': 0},
    const {'1': 'Denied', '2': 1},
  ],
};

/// Descriptor for `LobbyAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List lobbyActionDescriptor = $convert.base64Decode('CgtMb2JieUFjdGlvbhIKCgZBY2NlcHQQABIKCgZEZW5pZWQQAQ==');
@$core.Deprecated('Use channelReqDescriptor instead')
const ChannelReq$json = const {
  '1': 'ChannelReq',
  '2': const [
    const {'1': 'login', '3': 1, '4': 1, '5': 11, '6': '.api.proc.ChannelReq.Login', '9': 0, '10': 'login'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.api.proc.StatusType', '9': 0, '10': 'status'},
    const {'1': 'channel', '3': 3, '4': 1, '5': 11, '6': '.api.proc.ChannelReq.Channel', '9': 0, '10': 'channel'},
  ],
  '3': const [ChannelReq_Channel$json, ChannelReq_Login$json],
  '4': const [ChannelReq_ChannelAction$json],
  '8': const [
    const {'1': 'req'},
  ],
};

@$core.Deprecated('Use channelReqDescriptor instead')
const ChannelReq_Channel$json = const {
  '1': 'Channel',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'action', '3': 2, '4': 1, '5': 14, '6': '.api.proc.ChannelReq.ChannelAction', '10': 'action'},
    const {'1': 'isLobby', '3': 3, '4': 1, '5': 8, '10': 'isLobby'},
    const {'1': 'isLobbyReq', '3': 4, '4': 1, '5': 8, '10': 'isLobbyReq'},
  ],
};

@$core.Deprecated('Use channelReqDescriptor instead')
const ChannelReq_Login$json = const {
  '1': 'Login',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

@$core.Deprecated('Use channelReqDescriptor instead')
const ChannelReq_ChannelAction$json = const {
  '1': 'ChannelAction',
  '2': const [
    const {'1': 'Add', '2': 0},
    const {'1': 'Delete', '2': 1},
  ],
};

/// Descriptor for `ChannelReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelReqDescriptor = $convert.base64Decode('CgpDaGFubmVsUmVxEjIKBWxvZ2luGAEgASgLMhouYXBpLnByb2MuQ2hhbm5lbFJlcS5Mb2dpbkgAUgVsb2dpbhIuCgZzdGF0dXMYAiABKA4yFC5hcGkucHJvYy5TdGF0dXNUeXBlSABSBnN0YXR1cxI4CgdjaGFubmVsGAMgASgLMhwuYXBpLnByb2MuQ2hhbm5lbFJlcS5DaGFubmVsSABSB2NoYW5uZWwakwEKB0NoYW5uZWwSEgoEbmFtZRgBIAEoCVIEbmFtZRI6CgZhY3Rpb24YAiABKA4yIi5hcGkucHJvYy5DaGFubmVsUmVxLkNoYW5uZWxBY3Rpb25SBmFjdGlvbhIYCgdpc0xvYmJ5GAMgASgIUgdpc0xvYmJ5Eh4KCmlzTG9iYnlSZXEYBCABKAhSCmlzTG9iYnlSZXEaPwoFTG9naW4SGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZCIkCg1DaGFubmVsQWN0aW9uEgcKA0FkZBAAEgoKBkRlbGV0ZRABQgUKA3JlcQ==');
@$core.Deprecated('Use channelDescriptor instead')
const Channel$json = const {
  '1': 'Channel',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'change', '3': 2, '4': 1, '5': 9, '10': 'change'},
  ],
};

/// Descriptor for `Channel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelDescriptor = $convert.base64Decode('CgdDaGFubmVsEhIKBG5hbWUYASABKAlSBG5hbWUSFgoGY2hhbmdlGAIgASgJUgZjaGFuZ2U=');
@$core.Deprecated('Use lobbyResponseDescriptor instead')
const LobbyResponse$json = const {
  '1': 'LobbyResponse',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'change', '3': 2, '4': 1, '5': 9, '10': 'change'},
    const {'1': 'payload', '3': 3, '4': 1, '5': 11, '6': '.api.proc.UserPublic', '10': 'payload'},
  ],
};

/// Descriptor for `LobbyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lobbyResponseDescriptor = $convert.base64Decode('Cg1Mb2JieVJlc3BvbnNlEhIKBG5hbWUYASABKAlSBG5hbWUSFgoGY2hhbmdlGAIgASgJUgZjaGFuZ2USLgoHcGF5bG9hZBgDIAEoCzIULmFwaS5wcm9jLlVzZXJQdWJsaWNSB3BheWxvYWQ=');
@$core.Deprecated('Use lobbyReqResponseDescriptor instead')
const LobbyReqResponse$json = const {
  '1': 'LobbyReqResponse',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'action', '3': 2, '4': 1, '5': 14, '6': '.api.proc.LobbyAction', '10': 'action'},
  ],
};

/// Descriptor for `LobbyReqResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lobbyReqResponseDescriptor = $convert.base64Decode('ChBMb2JieVJlcVJlc3BvbnNlEhIKBG5hbWUYASABKAlSBG5hbWUSLQoGYWN0aW9uGAIgASgOMhUuYXBpLnByb2MuTG9iYnlBY3Rpb25SBmFjdGlvbg==');
@$core.Deprecated('Use channelResDescriptor instead')
const ChannelRes$json = const {
  '1': 'ChannelRes',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'error'},
    const {'1': 'channel', '3': 2, '4': 1, '5': 11, '6': '.api.proc.Channel', '9': 0, '10': 'channel'},
    const {'1': 'lobby_res', '3': 3, '4': 1, '5': 11, '6': '.api.proc.LobbyResponse', '9': 0, '10': 'lobbyRes'},
    const {'1': 'lobby_req_res', '3': 4, '4': 1, '5': 11, '6': '.api.proc.LobbyReqResponse', '9': 0, '10': 'lobbyReqRes'},
  ],
  '8': const [
    const {'1': 'res'},
  ],
};

/// Descriptor for `ChannelRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelResDescriptor = $convert.base64Decode('CgpDaGFubmVsUmVzEhYKBWVycm9yGAEgASgJSABSBWVycm9yEi0KB2NoYW5uZWwYAiABKAsyES5hcGkucHJvYy5DaGFubmVsSABSB2NoYW5uZWwSNgoJbG9iYnlfcmVzGAMgASgLMhcuYXBpLnByb2MuTG9iYnlSZXNwb25zZUgAUghsb2JieVJlcxJACg1sb2JieV9yZXFfcmVzGAQgASgLMhouYXBpLnByb2MuTG9iYnlSZXFSZXNwb25zZUgAUgtsb2JieVJlcVJlc0IFCgNyZXM=');
