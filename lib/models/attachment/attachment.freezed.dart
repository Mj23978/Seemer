// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return _Attachment.fromJson(json);
}

/// @nodoc
class _$AttachmentTearOff {
  const _$AttachmentTearOff();

  _Attachment call(
      {required String id,
      required UploadState uploadState,
      String? type,
      String? titleLink,
      String? title,
      String? thumbUrl,
      String? text,
      String? pretext,
      String? ogScrapeUrl,
      String? imageUrl,
      String? footer,
      dynamic fields = null,
      String? color,
      String? authorName,
      String? authorLink,
      String? assetUrl,
      @JsonKey(defaultValue: [])
          List<Action> actions = const [],
      Uri? localUri,
      AttachmentFile? file,
      @JsonKey(includeIfNull: false)
          Map<String, Object?> extraData = const {}}) {
    return _Attachment(
      id: id,
      uploadState: uploadState,
      type: type,
      titleLink: titleLink,
      title: title,
      thumbUrl: thumbUrl,
      text: text,
      pretext: pretext,
      ogScrapeUrl: ogScrapeUrl,
      imageUrl: imageUrl,
      footer: footer,
      fields: fields,
      color: color,
      authorName: authorName,
      authorLink: authorLink,
      assetUrl: assetUrl,
      actions: actions,
      localUri: localUri,
      file: file,
      extraData: extraData,
    );
  }

  Attachment fromJson(Map<String, Object?> json) {
    return Attachment.fromJson(json);
  }
}

/// @nodoc
const $Attachment = _$AttachmentTearOff();

/// @nodoc
mixin _$Attachment {
  String get id => throw _privateConstructorUsedError;
  UploadState get uploadState => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get titleLink => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get thumbUrl => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get pretext => throw _privateConstructorUsedError;
  String? get ogScrapeUrl => throw _privateConstructorUsedError;
  String? get imageUrl =>
      throw _privateConstructorUsedError; // String? footerIcon,
  String? get footer => throw _privateConstructorUsedError;
  dynamic get fields => throw _privateConstructorUsedError; // String? fallback,
  String? get color => throw _privateConstructorUsedError;
  String? get authorName => throw _privateConstructorUsedError;
  String? get authorLink =>
      throw _privateConstructorUsedError; // String? authorIcon,
  String? get assetUrl => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<Action> get actions => throw _privateConstructorUsedError;
  Uri? get localUri => throw _privateConstructorUsedError;
  AttachmentFile? get file => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  Map<String, Object?> get extraData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentCopyWith<Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res>;
  $Res call(
      {String id,
      UploadState uploadState,
      String? type,
      String? titleLink,
      String? title,
      String? thumbUrl,
      String? text,
      String? pretext,
      String? ogScrapeUrl,
      String? imageUrl,
      String? footer,
      dynamic fields,
      String? color,
      String? authorName,
      String? authorLink,
      String? assetUrl,
      @JsonKey(defaultValue: []) List<Action> actions,
      Uri? localUri,
      AttachmentFile? file,
      @JsonKey(includeIfNull: false) Map<String, Object?> extraData});

  $UploadStateCopyWith<$Res> get uploadState;
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res> implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  final Attachment _value;
  // ignore: unused_field
  final $Res Function(Attachment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uploadState = freezed,
    Object? type = freezed,
    Object? titleLink = freezed,
    Object? title = freezed,
    Object? thumbUrl = freezed,
    Object? text = freezed,
    Object? pretext = freezed,
    Object? ogScrapeUrl = freezed,
    Object? imageUrl = freezed,
    Object? footer = freezed,
    Object? fields = freezed,
    Object? color = freezed,
    Object? authorName = freezed,
    Object? authorLink = freezed,
    Object? assetUrl = freezed,
    Object? actions = freezed,
    Object? localUri = freezed,
    Object? file = freezed,
    Object? extraData = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uploadState: uploadState == freezed
          ? _value.uploadState
          : uploadState // ignore: cast_nullable_to_non_nullable
              as UploadState,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      titleLink: titleLink == freezed
          ? _value.titleLink
          : titleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbUrl: thumbUrl == freezed
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      pretext: pretext == freezed
          ? _value.pretext
          : pretext // ignore: cast_nullable_to_non_nullable
              as String?,
      ogScrapeUrl: ogScrapeUrl == freezed
          ? _value.ogScrapeUrl
          : ogScrapeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      footer: footer == freezed
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as dynamic,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      authorLink: authorLink == freezed
          ? _value.authorLink
          : authorLink // ignore: cast_nullable_to_non_nullable
              as String?,
      assetUrl: assetUrl == freezed
          ? _value.assetUrl
          : assetUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Action>,
      localUri: localUri == freezed
          ? _value.localUri
          : localUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as AttachmentFile?,
      extraData: extraData == freezed
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }

  @override
  $UploadStateCopyWith<$Res> get uploadState {
    return $UploadStateCopyWith<$Res>(_value.uploadState, (value) {
      return _then(_value.copyWith(uploadState: value));
    });
  }
}

/// @nodoc
abstract class _$AttachmentCopyWith<$Res> implements $AttachmentCopyWith<$Res> {
  factory _$AttachmentCopyWith(
          _Attachment value, $Res Function(_Attachment) then) =
      __$AttachmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      UploadState uploadState,
      String? type,
      String? titleLink,
      String? title,
      String? thumbUrl,
      String? text,
      String? pretext,
      String? ogScrapeUrl,
      String? imageUrl,
      String? footer,
      dynamic fields,
      String? color,
      String? authorName,
      String? authorLink,
      String? assetUrl,
      @JsonKey(defaultValue: []) List<Action> actions,
      Uri? localUri,
      AttachmentFile? file,
      @JsonKey(includeIfNull: false) Map<String, Object?> extraData});

  @override
  $UploadStateCopyWith<$Res> get uploadState;
}

/// @nodoc
class __$AttachmentCopyWithImpl<$Res> extends _$AttachmentCopyWithImpl<$Res>
    implements _$AttachmentCopyWith<$Res> {
  __$AttachmentCopyWithImpl(
      _Attachment _value, $Res Function(_Attachment) _then)
      : super(_value, (v) => _then(v as _Attachment));

  @override
  _Attachment get _value => super._value as _Attachment;

  @override
  $Res call({
    Object? id = freezed,
    Object? uploadState = freezed,
    Object? type = freezed,
    Object? titleLink = freezed,
    Object? title = freezed,
    Object? thumbUrl = freezed,
    Object? text = freezed,
    Object? pretext = freezed,
    Object? ogScrapeUrl = freezed,
    Object? imageUrl = freezed,
    Object? footer = freezed,
    Object? fields = freezed,
    Object? color = freezed,
    Object? authorName = freezed,
    Object? authorLink = freezed,
    Object? assetUrl = freezed,
    Object? actions = freezed,
    Object? localUri = freezed,
    Object? file = freezed,
    Object? extraData = freezed,
  }) {
    return _then(_Attachment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uploadState: uploadState == freezed
          ? _value.uploadState
          : uploadState // ignore: cast_nullable_to_non_nullable
              as UploadState,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      titleLink: titleLink == freezed
          ? _value.titleLink
          : titleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbUrl: thumbUrl == freezed
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      pretext: pretext == freezed
          ? _value.pretext
          : pretext // ignore: cast_nullable_to_non_nullable
              as String?,
      ogScrapeUrl: ogScrapeUrl == freezed
          ? _value.ogScrapeUrl
          : ogScrapeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      footer: footer == freezed
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as dynamic,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
      authorLink: authorLink == freezed
          ? _value.authorLink
          : authorLink // ignore: cast_nullable_to_non_nullable
              as String?,
      assetUrl: assetUrl == freezed
          ? _value.assetUrl
          : assetUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<Action>,
      localUri: localUri == freezed
          ? _value.localUri
          : localUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as AttachmentFile?,
      extraData: extraData == freezed
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attachment with DiagnosticableTreeMixin implements _Attachment {
  const _$_Attachment(
      {required this.id,
      required this.uploadState,
      this.type,
      this.titleLink,
      this.title,
      this.thumbUrl,
      this.text,
      this.pretext,
      this.ogScrapeUrl,
      this.imageUrl,
      this.footer,
      this.fields = null,
      this.color,
      this.authorName,
      this.authorLink,
      this.assetUrl,
      @JsonKey(defaultValue: []) this.actions = const [],
      this.localUri,
      this.file,
      @JsonKey(includeIfNull: false) this.extraData = const {}});

  factory _$_Attachment.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentFromJson(json);

  @override
  final String id;
  @override
  final UploadState uploadState;
  @override
  final String? type;
  @override
  final String? titleLink;
  @override
  final String? title;
  @override
  final String? thumbUrl;
  @override
  final String? text;
  @override
  final String? pretext;
  @override
  final String? ogScrapeUrl;
  @override
  final String? imageUrl;
  @override // String? footerIcon,
  final String? footer;
  @JsonKey(defaultValue: null)
  @override
  final dynamic fields;
  @override // String? fallback,
  final String? color;
  @override
  final String? authorName;
  @override
  final String? authorLink;
  @override // String? authorIcon,
  final String? assetUrl;
  @override
  @JsonKey(defaultValue: [])
  final List<Action> actions;
  @override
  final Uri? localUri;
  @override
  final AttachmentFile? file;
  @override
  @JsonKey(includeIfNull: false)
  final Map<String, Object?> extraData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Attachment(id: $id, uploadState: $uploadState, type: $type, titleLink: $titleLink, title: $title, thumbUrl: $thumbUrl, text: $text, pretext: $pretext, ogScrapeUrl: $ogScrapeUrl, imageUrl: $imageUrl, footer: $footer, fields: $fields, color: $color, authorName: $authorName, authorLink: $authorLink, assetUrl: $assetUrl, actions: $actions, localUri: $localUri, file: $file, extraData: $extraData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Attachment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('uploadState', uploadState))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('titleLink', titleLink))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('thumbUrl', thumbUrl))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('pretext', pretext))
      ..add(DiagnosticsProperty('ogScrapeUrl', ogScrapeUrl))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('footer', footer))
      ..add(DiagnosticsProperty('fields', fields))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('authorName', authorName))
      ..add(DiagnosticsProperty('authorLink', authorLink))
      ..add(DiagnosticsProperty('assetUrl', assetUrl))
      ..add(DiagnosticsProperty('actions', actions))
      ..add(DiagnosticsProperty('localUri', localUri))
      ..add(DiagnosticsProperty('file', file))
      ..add(DiagnosticsProperty('extraData', extraData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Attachment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uploadState, uploadState) ||
                other.uploadState == uploadState) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.titleLink, titleLink) ||
                other.titleLink == titleLink) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbUrl, thumbUrl) ||
                other.thumbUrl == thumbUrl) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.pretext, pretext) || other.pretext == pretext) &&
            (identical(other.ogScrapeUrl, ogScrapeUrl) ||
                other.ogScrapeUrl == ogScrapeUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.footer, footer) || other.footer == footer) &&
            const DeepCollectionEquality().equals(other.fields, fields) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.authorLink, authorLink) ||
                other.authorLink == authorLink) &&
            (identical(other.assetUrl, assetUrl) ||
                other.assetUrl == assetUrl) &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            (identical(other.localUri, localUri) ||
                other.localUri == localUri) &&
            (identical(other.file, file) || other.file == file) &&
            const DeepCollectionEquality().equals(other.extraData, extraData));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        uploadState,
        type,
        titleLink,
        title,
        thumbUrl,
        text,
        pretext,
        ogScrapeUrl,
        imageUrl,
        footer,
        const DeepCollectionEquality().hash(fields),
        color,
        authorName,
        authorLink,
        assetUrl,
        const DeepCollectionEquality().hash(actions),
        localUri,
        file,
        const DeepCollectionEquality().hash(extraData)
      ]);

  @JsonKey(ignore: true)
  @override
  _$AttachmentCopyWith<_Attachment> get copyWith =>
      __$AttachmentCopyWithImpl<_Attachment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentToJson(this);
  }
}

abstract class _Attachment implements Attachment {
  const factory _Attachment(
          {required String id,
          required UploadState uploadState,
          String? type,
          String? titleLink,
          String? title,
          String? thumbUrl,
          String? text,
          String? pretext,
          String? ogScrapeUrl,
          String? imageUrl,
          String? footer,
          dynamic fields,
          String? color,
          String? authorName,
          String? authorLink,
          String? assetUrl,
          @JsonKey(defaultValue: []) List<Action> actions,
          Uri? localUri,
          AttachmentFile? file,
          @JsonKey(includeIfNull: false) Map<String, Object?> extraData}) =
      _$_Attachment;

  factory _Attachment.fromJson(Map<String, dynamic> json) =
      _$_Attachment.fromJson;

  @override
  String get id;
  @override
  UploadState get uploadState;
  @override
  String? get type;
  @override
  String? get titleLink;
  @override
  String? get title;
  @override
  String? get thumbUrl;
  @override
  String? get text;
  @override
  String? get pretext;
  @override
  String? get ogScrapeUrl;
  @override
  String? get imageUrl;
  @override // String? footerIcon,
  String? get footer;
  @override
  dynamic get fields;
  @override // String? fallback,
  String? get color;
  @override
  String? get authorName;
  @override
  String? get authorLink;
  @override // String? authorIcon,
  String? get assetUrl;
  @override
  @JsonKey(defaultValue: [])
  List<Action> get actions;
  @override
  Uri? get localUri;
  @override
  AttachmentFile? get file;
  @override
  @JsonKey(includeIfNull: false)
  Map<String, Object?> get extraData;
  @override
  @JsonKey(ignore: true)
  _$AttachmentCopyWith<_Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadState _$UploadStateFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'preparing':
      return Preparing.fromJson(json);
    case 'inProgress':
      return InProgress.fromJson(json);
    case 'success':
      return Success.fromJson(json);
    case 'failed':
      return Failed.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'UploadState', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$UploadStateTearOff {
  const _$UploadStateTearOff();

  Preparing preparing() {
    return const Preparing();
  }

  InProgress inProgress({required int uploaded, required int total}) {
    return InProgress(
      uploaded: uploaded,
      total: total,
    );
  }

  Success success() {
    return const Success();
  }

  Failed failed({required String error}) {
    return Failed(
      error: error,
    );
  }

  UploadState fromJson(Map<String, Object?> json) {
    return UploadState.fromJson(json);
  }
}

/// @nodoc
const $UploadState = _$UploadStateTearOff();

/// @nodoc
mixin _$UploadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preparing,
    required TResult Function(int uploaded, int total) inProgress,
    required TResult Function() success,
    required TResult Function(String error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(int uploaded, int total)? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(int uploaded, int total)? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Preparing value) preparing,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadStateCopyWith<$Res> {
  factory $UploadStateCopyWith(
          UploadState value, $Res Function(UploadState) then) =
      _$UploadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadStateCopyWithImpl<$Res> implements $UploadStateCopyWith<$Res> {
  _$UploadStateCopyWithImpl(this._value, this._then);

  final UploadState _value;
  // ignore: unused_field
  final $Res Function(UploadState) _then;
}

/// @nodoc
abstract class $PreparingCopyWith<$Res> {
  factory $PreparingCopyWith(Preparing value, $Res Function(Preparing) then) =
      _$PreparingCopyWithImpl<$Res>;
}

/// @nodoc
class _$PreparingCopyWithImpl<$Res> extends _$UploadStateCopyWithImpl<$Res>
    implements $PreparingCopyWith<$Res> {
  _$PreparingCopyWithImpl(Preparing _value, $Res Function(Preparing) _then)
      : super(_value, (v) => _then(v as Preparing));

  @override
  Preparing get _value => super._value as Preparing;
}

/// @nodoc
@JsonSerializable()
class _$Preparing with DiagnosticableTreeMixin implements Preparing {
  const _$Preparing({String? $type}) : $type = $type ?? 'preparing';

  factory _$Preparing.fromJson(Map<String, dynamic> json) =>
      _$$PreparingFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadState.preparing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'UploadState.preparing'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Preparing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preparing,
    required TResult Function(int uploaded, int total) inProgress,
    required TResult Function() success,
    required TResult Function(String error) failed,
  }) {
    return preparing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(int uploaded, int total)? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failed,
  }) {
    return preparing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(int uploaded, int total)? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (preparing != null) {
      return preparing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Preparing value) preparing,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
  }) {
    return preparing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
  }) {
    return preparing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (preparing != null) {
      return preparing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PreparingToJson(this);
  }
}

abstract class Preparing implements UploadState {
  const factory Preparing() = _$Preparing;

  factory Preparing.fromJson(Map<String, dynamic> json) = _$Preparing.fromJson;
}

/// @nodoc
abstract class $InProgressCopyWith<$Res> {
  factory $InProgressCopyWith(
          InProgress value, $Res Function(InProgress) then) =
      _$InProgressCopyWithImpl<$Res>;
  $Res call({int uploaded, int total});
}

/// @nodoc
class _$InProgressCopyWithImpl<$Res> extends _$UploadStateCopyWithImpl<$Res>
    implements $InProgressCopyWith<$Res> {
  _$InProgressCopyWithImpl(InProgress _value, $Res Function(InProgress) _then)
      : super(_value, (v) => _then(v as InProgress));

  @override
  InProgress get _value => super._value as InProgress;

  @override
  $Res call({
    Object? uploaded = freezed,
    Object? total = freezed,
  }) {
    return _then(InProgress(
      uploaded: uploaded == freezed
          ? _value.uploaded
          : uploaded // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InProgress with DiagnosticableTreeMixin implements InProgress {
  const _$InProgress(
      {required this.uploaded, required this.total, String? $type})
      : $type = $type ?? 'inProgress';

  factory _$InProgress.fromJson(Map<String, dynamic> json) =>
      _$$InProgressFromJson(json);

  @override
  final int uploaded;
  @override
  final int total;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadState.inProgress(uploaded: $uploaded, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadState.inProgress'))
      ..add(DiagnosticsProperty('uploaded', uploaded))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InProgress &&
            (identical(other.uploaded, uploaded) ||
                other.uploaded == uploaded) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uploaded, total);

  @JsonKey(ignore: true)
  @override
  $InProgressCopyWith<InProgress> get copyWith =>
      _$InProgressCopyWithImpl<InProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preparing,
    required TResult Function(int uploaded, int total) inProgress,
    required TResult Function() success,
    required TResult Function(String error) failed,
  }) {
    return inProgress(uploaded, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(int uploaded, int total)? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failed,
  }) {
    return inProgress?.call(uploaded, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(int uploaded, int total)? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(uploaded, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Preparing value) preparing,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InProgressToJson(this);
  }
}

abstract class InProgress implements UploadState {
  const factory InProgress({required int uploaded, required int total}) =
      _$InProgress;

  factory InProgress.fromJson(Map<String, dynamic> json) =
      _$InProgress.fromJson;

  int get uploaded;
  int get total;
  @JsonKey(ignore: true)
  $InProgressCopyWith<InProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$UploadStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;
}

/// @nodoc
@JsonSerializable()
class _$Success with DiagnosticableTreeMixin implements Success {
  const _$Success({String? $type}) : $type = $type ?? 'success';

  factory _$Success.fromJson(Map<String, dynamic> json) =>
      _$$SuccessFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'UploadState.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preparing,
    required TResult Function(int uploaded, int total) inProgress,
    required TResult Function() success,
    required TResult Function(String error) failed,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(int uploaded, int total)? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failed,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(int uploaded, int total)? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Preparing value) preparing,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessToJson(this);
  }
}

abstract class Success implements UploadState {
  const factory Success() = _$Success;

  factory Success.fromJson(Map<String, dynamic> json) = _$Success.fromJson;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$FailedCopyWithImpl<$Res> extends _$UploadStateCopyWithImpl<$Res>
    implements $FailedCopyWith<$Res> {
  _$FailedCopyWithImpl(Failed _value, $Res Function(Failed) _then)
      : super(_value, (v) => _then(v as Failed));

  @override
  Failed get _value => super._value as Failed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Failed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Failed with DiagnosticableTreeMixin implements Failed {
  const _$Failed({required this.error, String? $type})
      : $type = $type ?? 'failed';

  factory _$Failed.fromJson(Map<String, dynamic> json) =>
      _$$FailedFromJson(json);

  @override
  final String error;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadState.failed(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadState.failed'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failed &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  $FailedCopyWith<Failed> get copyWith =>
      _$FailedCopyWithImpl<Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preparing,
    required TResult Function(int uploaded, int total) inProgress,
    required TResult Function() success,
    required TResult Function(String error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(int uploaded, int total)? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preparing,
    TResult Function(int uploaded, int total)? inProgress,
    TResult Function()? success,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Preparing value) preparing,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(Success value) success,
    required TResult Function(Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Preparing value)? preparing,
    TResult Function(InProgress value)? inProgress,
    TResult Function(Success value)? success,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailedToJson(this);
  }
}

abstract class Failed implements UploadState {
  const factory Failed({required String error}) = _$Failed;

  factory Failed.fromJson(Map<String, dynamic> json) = _$Failed.fromJson;

  String get error;
  @JsonKey(ignore: true)
  $FailedCopyWith<Failed> get copyWith => throw _privateConstructorUsedError;
}
