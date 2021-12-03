///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use statusTypeDescriptor instead')
const StatusType$json = const {
  '1': 'StatusType',
  '2': const [
    const {'1': 'Online', '2': 0},
    const {'1': 'Away', '2': 1},
    const {'1': 'Playing', '2': 2},
    const {'1': 'Offline', '2': 3},
  ],
};

/// Descriptor for `StatusType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusTypeDescriptor = $convert.base64Decode('CgpTdGF0dXNUeXBlEgoKBk9ubGluZRAAEggKBEF3YXkQARILCgdQbGF5aW5nEAISCwoHT2ZmbGluZRAD');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'token', '3': 5, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'level', '3': 6, '4': 1, '5': 13, '10': 'level'},
    const {'1': 'win', '3': 7, '4': 1, '5': 13, '10': 'win'},
    const {'1': 'lose', '3': 8, '4': 1, '5': 13, '10': 'lose'},
    const {'1': 'status', '3': 9, '4': 1, '5': 14, '6': '.api.proc.StatusType', '10': 'status'},
    const {'1': 'photo_path', '3': 10, '4': 1, '5': 9, '10': 'photoPath'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIaCgh1c2VybmFtZRgCIAEoCVIIdXNlcm5hbWUSGgoIcGFzc3dvcmQYAyABKAlSCHBhc3N3b3JkEhQKBWVtYWlsGAQgASgJUgVlbWFpbBIUCgV0b2tlbhgFIAEoCVIFdG9rZW4SFAoFbGV2ZWwYBiABKA1SBWxldmVsEhAKA3dpbhgHIAEoDVIDd2luEhIKBGxvc2UYCCABKA1SBGxvc2USLAoGc3RhdHVzGAkgASgOMhQuYXBpLnByb2MuU3RhdHVzVHlwZVIGc3RhdHVzEh0KCnBob3RvX3BhdGgYCiABKAlSCXBob3RvUGF0aA==');
@$core.Deprecated('Use userPublicDescriptor instead')
const UserPublic$json = const {
  '1': 'UserPublic',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'photo_path', '3': 2, '4': 1, '5': 9, '10': 'photoPath'},
    const {'1': 'level', '3': 3, '4': 1, '5': 13, '10': 'level'},
    const {'1': 'win', '3': 4, '4': 1, '5': 13, '10': 'win'},
    const {'1': 'lose', '3': 5, '4': 1, '5': 13, '10': 'lose'},
    const {'1': 'status', '3': 6, '4': 1, '5': 14, '6': '.api.proc.StatusType', '10': 'status'},
  ],
};

/// Descriptor for `UserPublic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userPublicDescriptor = $convert.base64Decode('CgpVc2VyUHVibGljEhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIdCgpwaG90b19wYXRoGAIgASgJUglwaG90b1BhdGgSFAoFbGV2ZWwYAyABKA1SBWxldmVsEhAKA3dpbhgEIAEoDVIDd2luEhIKBGxvc2UYBSABKA1SBGxvc2USLAoGc3RhdHVzGAYgASgOMhQuYXBpLnByb2MuU3RhdHVzVHlwZVIGc3RhdHVz');
@$core.Deprecated('Use uPDescriptor instead')
const UP$json = const {
  '1': 'UP',
  '2': const [
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `UP`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uPDescriptor = $convert.base64Decode('CgJVUBIaCgh1c2VybmFtZRgCIAEoCVIIdXNlcm5hbWUSGgoIcGFzc3dvcmQYAyABKAlSCHBhc3N3b3Jk');
@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = const {
  '1': 'GetUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert.base64Decode('Cg5HZXRVc2VyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use createUserRequestDescriptor instead')
const CreateUserRequest$json = const {
  '1': 'CreateUserRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.api.proc.User', '10': 'user'},
  ],
};

/// Descriptor for `CreateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUserRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVVc2VyUmVxdWVzdBIiCgR1c2VyGAEgASgLMg4uYXBpLnByb2MuVXNlclIEdXNlcg==');
@$core.Deprecated('Use signUpRequestDescriptor instead')
const SignUpRequest$json = const {
  '1': 'SignUpRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.api.proc.User', '10': 'user'},
  ],
};

/// Descriptor for `SignUpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signUpRequestDescriptor = $convert.base64Decode('Cg1TaWduVXBSZXF1ZXN0EiIKBHVzZXIYASABKAsyDi5hcGkucHJvYy5Vc2VyUgR1c2Vy');
@$core.Deprecated('Use tokenDescriptor instead')
const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `Token`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenDescriptor = $convert.base64Decode('CgVUb2tlbhIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SIwoNcmVmcmVzaF90b2tlbhgCIAEoCVIMcmVmcmVzaFRva2Vu');
@$core.Deprecated('Use signInRequestDescriptor instead')
const SignInRequest$json = const {
  '1': 'SignInRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.api.proc.User', '10': 'user'},
  ],
};

/// Descriptor for `SignInRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRequestDescriptor = $convert.base64Decode('Cg1TaWduSW5SZXF1ZXN0EiIKBHVzZXIYASABKAsyDi5hcGkucHJvYy5Vc2VyUgR1c2Vy');
@$core.Deprecated('Use refreshTokenRequestDescriptor instead')
const RefreshTokenRequest$json = const {
  '1': 'RefreshTokenRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.api.proc.UP', '9': 0, '10': 'user'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'refreshToken'},
  ],
  '8': const [
    const {'1': 'id'},
  ],
};

/// Descriptor for `RefreshTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenRequestDescriptor = $convert.base64Decode('ChNSZWZyZXNoVG9rZW5SZXF1ZXN0EiIKBHVzZXIYASABKAsyDC5hcGkucHJvYy5VUEgAUgR1c2VyEiUKDXJlZnJlc2hfdG9rZW4YAiABKAlIAFIMcmVmcmVzaFRva2VuQgQKAmlk');
@$core.Deprecated('Use signInResponseDescriptor instead')
const SignInResponse$json = const {
  '1': 'SignInResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.api.proc.User', '10': 'user'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `SignInResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInResponseDescriptor = $convert.base64Decode('Cg5TaWduSW5SZXNwb25zZRIiCgR1c2VyGAEgASgLMg4uYXBpLnByb2MuVXNlclIEdXNlchIUCgV0b2tlbhgCIAEoCVIFdG9rZW4SIwoNcmVmcmVzaF90b2tlbhgDIAEoCVIMcmVmcmVzaFRva2Vu');
@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = const {
  '1': 'UpdateUserRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.api.proc.User', '10': 'user'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVVc2VyUmVxdWVzdBIiCgR1c2VyGAEgASgLMg4uYXBpLnByb2MuVXNlclIEdXNlchI7Cgt1cGRhdGVfbWFzaxgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5GaWVsZE1hc2tSCnVwZGF0ZU1hc2s=');
@$core.Deprecated('Use statusRequestDescriptor instead')
const StatusRequest$json = const {
  '1': 'StatusRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.api.proc.StatusType', '10': 'status'},
  ],
};

/// Descriptor for `StatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusRequestDescriptor = $convert.base64Decode('Cg1TdGF0dXNSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZBIsCgZzdGF0dXMYAiABKA4yFC5hcGkucHJvYy5TdGF0dXNUeXBlUgZzdGF0dXM=');
