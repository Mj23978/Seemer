///
//  Generated code. Do not modify.
//  source: app.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $0;

import 'user.pbenum.dart' as $0;
import 'app.pbenum.dart';

export 'app.pbenum.dart';

class ChannelReq_Channel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelReq.Channel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.proc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<ChannelReq_ChannelAction>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: ChannelReq_ChannelAction.Add, valueOf: ChannelReq_ChannelAction.valueOf, enumValues: ChannelReq_ChannelAction.values)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isLobby', protoName: 'isLobby')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isLobbyReq', protoName: 'isLobbyReq')
    ..hasRequiredFields = false
  ;

  ChannelReq_Channel._() : super();
  factory ChannelReq_Channel({
    $core.String? name,
    ChannelReq_ChannelAction? action,
    $core.bool? isLobby,
    $core.bool? isLobbyReq,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (action != null) {
      _result.action = action;
    }
    if (isLobby != null) {
      _result.isLobby = isLobby;
    }
    if (isLobbyReq != null) {
      _result.isLobbyReq = isLobbyReq;
    }
    return _result;
  }
  factory ChannelReq_Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelReq_Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelReq_Channel clone() => ChannelReq_Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelReq_Channel copyWith(void Function(ChannelReq_Channel) updates) => super.copyWith((message) => updates(message as ChannelReq_Channel)) as ChannelReq_Channel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelReq_Channel create() => ChannelReq_Channel._();
  ChannelReq_Channel createEmptyInstance() => create();
  static $pb.PbList<ChannelReq_Channel> createRepeated() => $pb.PbList<ChannelReq_Channel>();
  @$core.pragma('dart2js:noInline')
  static ChannelReq_Channel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelReq_Channel>(create);
  static ChannelReq_Channel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  ChannelReq_ChannelAction get action => $_getN(1);
  @$pb.TagNumber(2)
  set action(ChannelReq_ChannelAction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isLobby => $_getBF(2);
  @$pb.TagNumber(3)
  set isLobby($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsLobby() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsLobby() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isLobbyReq => $_getBF(3);
  @$pb.TagNumber(4)
  set isLobbyReq($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsLobbyReq() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsLobbyReq() => clearField(4);
}

class ChannelReq_Login extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelReq.Login', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.proc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  ChannelReq_Login._() : super();
  factory ChannelReq_Login({
    $core.String? username,
    $core.String? password,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory ChannelReq_Login.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelReq_Login.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelReq_Login clone() => ChannelReq_Login()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelReq_Login copyWith(void Function(ChannelReq_Login) updates) => super.copyWith((message) => updates(message as ChannelReq_Login)) as ChannelReq_Login; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelReq_Login create() => ChannelReq_Login._();
  ChannelReq_Login createEmptyInstance() => create();
  static $pb.PbList<ChannelReq_Login> createRepeated() => $pb.PbList<ChannelReq_Login>();
  @$core.pragma('dart2js:noInline')
  static ChannelReq_Login getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelReq_Login>(create);
  static ChannelReq_Login? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

enum ChannelReq_Req {
  login, 
  status, 
  channel, 
  notSet
}

class ChannelReq extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ChannelReq_Req> _ChannelReq_ReqByTag = {
    1 : ChannelReq_Req.login,
    2 : ChannelReq_Req.status,
    3 : ChannelReq_Req.channel,
    0 : ChannelReq_Req.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.proc'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<ChannelReq_Login>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'login', subBuilder: ChannelReq_Login.create)
    ..e<$0.StatusType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $0.StatusType.Online, valueOf: $0.StatusType.valueOf, enumValues: $0.StatusType.values)
    ..aOM<ChannelReq_Channel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', subBuilder: ChannelReq_Channel.create)
    ..hasRequiredFields = false
  ;

  ChannelReq._() : super();
  factory ChannelReq({
    ChannelReq_Login? login,
    $0.StatusType? status,
    ChannelReq_Channel? channel,
  }) {
    final _result = create();
    if (login != null) {
      _result.login = login;
    }
    if (status != null) {
      _result.status = status;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    return _result;
  }
  factory ChannelReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelReq clone() => ChannelReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelReq copyWith(void Function(ChannelReq) updates) => super.copyWith((message) => updates(message as ChannelReq)) as ChannelReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelReq create() => ChannelReq._();
  ChannelReq createEmptyInstance() => create();
  static $pb.PbList<ChannelReq> createRepeated() => $pb.PbList<ChannelReq>();
  @$core.pragma('dart2js:noInline')
  static ChannelReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelReq>(create);
  static ChannelReq? _defaultInstance;

  ChannelReq_Req whichReq() => _ChannelReq_ReqByTag[$_whichOneof(0)]!;
  void clearReq() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ChannelReq_Login get login => $_getN(0);
  @$pb.TagNumber(1)
  set login(ChannelReq_Login v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogin() => clearField(1);
  @$pb.TagNumber(1)
  ChannelReq_Login ensureLogin() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.StatusType get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($0.StatusType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  ChannelReq_Channel get channel => $_getN(2);
  @$pb.TagNumber(3)
  set channel(ChannelReq_Channel v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannel() => clearField(3);
  @$pb.TagNumber(3)
  ChannelReq_Channel ensureChannel() => $_ensure(2);
}

class Channel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Channel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.proc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'change')
    ..hasRequiredFields = false
  ;

  Channel._() : super();
  factory Channel({
    $core.String? name,
    $core.String? change,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (change != null) {
      _result.change = change;
    }
    return _result;
  }
  factory Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Channel clone() => Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Channel copyWith(void Function(Channel) updates) => super.copyWith((message) => updates(message as Channel)) as Channel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Channel create() => Channel._();
  Channel createEmptyInstance() => create();
  static $pb.PbList<Channel> createRepeated() => $pb.PbList<Channel>();
  @$core.pragma('dart2js:noInline')
  static Channel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Channel>(create);
  static Channel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get change => $_getSZ(1);
  @$pb.TagNumber(2)
  set change($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChange() => $_has(1);
  @$pb.TagNumber(2)
  void clearChange() => clearField(2);
}

class LobbyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LobbyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.proc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'change')
    ..aOM<$0.UserPublic>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: $0.UserPublic.create)
    ..hasRequiredFields = false
  ;

  LobbyResponse._() : super();
  factory LobbyResponse({
    $core.String? name,
    $core.String? change,
    $0.UserPublic? payload,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (change != null) {
      _result.change = change;
    }
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory LobbyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LobbyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LobbyResponse clone() => LobbyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LobbyResponse copyWith(void Function(LobbyResponse) updates) => super.copyWith((message) => updates(message as LobbyResponse)) as LobbyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LobbyResponse create() => LobbyResponse._();
  LobbyResponse createEmptyInstance() => create();
  static $pb.PbList<LobbyResponse> createRepeated() => $pb.PbList<LobbyResponse>();
  @$core.pragma('dart2js:noInline')
  static LobbyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LobbyResponse>(create);
  static LobbyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get change => $_getSZ(1);
  @$pb.TagNumber(2)
  set change($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChange() => $_has(1);
  @$pb.TagNumber(2)
  void clearChange() => clearField(2);

  @$pb.TagNumber(3)
  $0.UserPublic get payload => $_getN(2);
  @$pb.TagNumber(3)
  set payload($0.UserPublic v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);
  @$pb.TagNumber(3)
  $0.UserPublic ensurePayload() => $_ensure(2);
}

class LobbyReqResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LobbyReqResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.proc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<LobbyAction>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: LobbyAction.Accept, valueOf: LobbyAction.valueOf, enumValues: LobbyAction.values)
    ..hasRequiredFields = false
  ;

  LobbyReqResponse._() : super();
  factory LobbyReqResponse({
    $core.String? name,
    LobbyAction? action,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (action != null) {
      _result.action = action;
    }
    return _result;
  }
  factory LobbyReqResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LobbyReqResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LobbyReqResponse clone() => LobbyReqResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LobbyReqResponse copyWith(void Function(LobbyReqResponse) updates) => super.copyWith((message) => updates(message as LobbyReqResponse)) as LobbyReqResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LobbyReqResponse create() => LobbyReqResponse._();
  LobbyReqResponse createEmptyInstance() => create();
  static $pb.PbList<LobbyReqResponse> createRepeated() => $pb.PbList<LobbyReqResponse>();
  @$core.pragma('dart2js:noInline')
  static LobbyReqResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LobbyReqResponse>(create);
  static LobbyReqResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  LobbyAction get action => $_getN(1);
  @$pb.TagNumber(2)
  set action(LobbyAction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);
}

enum ChannelRes_Res {
  error, 
  channel, 
  lobbyRes, 
  lobbyReqRes, 
  notSet
}

class ChannelRes extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ChannelRes_Res> _ChannelRes_ResByTag = {
    1 : ChannelRes_Res.error,
    2 : ChannelRes_Res.channel,
    3 : ChannelRes_Res.lobbyRes,
    4 : ChannelRes_Res.lobbyReqRes,
    0 : ChannelRes_Res.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelRes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.proc'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..aOM<Channel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', subBuilder: Channel.create)
    ..aOM<LobbyResponse>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lobbyRes', subBuilder: LobbyResponse.create)
    ..aOM<LobbyReqResponse>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lobbyReqRes', subBuilder: LobbyReqResponse.create)
    ..hasRequiredFields = false
  ;

  ChannelRes._() : super();
  factory ChannelRes({
    $core.String? error,
    Channel? channel,
    LobbyResponse? lobbyRes,
    LobbyReqResponse? lobbyReqRes,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (channel != null) {
      _result.channel = channel;
    }
    if (lobbyRes != null) {
      _result.lobbyRes = lobbyRes;
    }
    if (lobbyReqRes != null) {
      _result.lobbyReqRes = lobbyReqRes;
    }
    return _result;
  }
  factory ChannelRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelRes clone() => ChannelRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelRes copyWith(void Function(ChannelRes) updates) => super.copyWith((message) => updates(message as ChannelRes)) as ChannelRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelRes create() => ChannelRes._();
  ChannelRes createEmptyInstance() => create();
  static $pb.PbList<ChannelRes> createRepeated() => $pb.PbList<ChannelRes>();
  @$core.pragma('dart2js:noInline')
  static ChannelRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelRes>(create);
  static ChannelRes? _defaultInstance;

  ChannelRes_Res whichRes() => _ChannelRes_ResByTag[$_whichOneof(0)]!;
  void clearRes() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);

  @$pb.TagNumber(2)
  Channel get channel => $_getN(1);
  @$pb.TagNumber(2)
  set channel(Channel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasChannel() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannel() => clearField(2);
  @$pb.TagNumber(2)
  Channel ensureChannel() => $_ensure(1);

  @$pb.TagNumber(3)
  LobbyResponse get lobbyRes => $_getN(2);
  @$pb.TagNumber(3)
  set lobbyRes(LobbyResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLobbyRes() => $_has(2);
  @$pb.TagNumber(3)
  void clearLobbyRes() => clearField(3);
  @$pb.TagNumber(3)
  LobbyResponse ensureLobbyRes() => $_ensure(2);

  @$pb.TagNumber(4)
  LobbyReqResponse get lobbyReqRes => $_getN(3);
  @$pb.TagNumber(4)
  set lobbyReqRes(LobbyReqResponse v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLobbyReqRes() => $_has(3);
  @$pb.TagNumber(4)
  void clearLobbyReqRes() => clearField(4);
  @$pb.TagNumber(4)
  LobbyReqResponse ensureLobbyReqRes() => $_ensure(3);
}

