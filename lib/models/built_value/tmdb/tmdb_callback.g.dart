// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_callback.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TMDBCallback> _$tMDBCallbackSerializer =
    new _$TMDBCallbackSerializer();

class _$TMDBCallbackSerializer implements StructuredSerializer<TMDBCallback> {
  @override
  final Iterable<Type> types = const [TMDBCallback, _$TMDBCallback];
  @override
  final String wireName = 'TMDBCallback';

  @override
  Iterable<Object> serialize(Serializers serializers, TMDBCallback object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'status_code',
      serializers.serialize(object.statusCode,
          specifiedType: const FullType(String)),
      'status_message',
      serializers.serialize(object.statusMessage,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.success != null) {
      result
        ..add('success')
        ..add(serializers.serialize(object.success,
            specifiedType: const FullType(String)));
    }
    if (object.errorMessage != null) {
      result
        ..add('error_message')
        ..add(serializers.serialize(object.errorMessage,
            specifiedType: const FullType(String)));
    }
    if (object.results != null) {
      result
        ..add('results')
        ..add(serializers.serialize(object.results,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.mediaId != null) {
      result
        ..add('media_id')
        ..add(serializers.serialize(object.mediaId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TMDBCallback deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TMDBCallbackBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status_code':
          result.statusCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status_message':
          result.statusMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'error_message':
          result.errorMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'results':
          result.results = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList<dynamic>;
          break;
        case 'media_id':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TMDBCallback extends TMDBCallback {
  @override
  final String statusCode;
  @override
  final String statusMessage;
  @override
  final int id;
  @override
  final String success;
  @override
  final String errorMessage;
  @override
  final BuiltList results;
  @override
  final String mediaId;

  factory _$TMDBCallback([void Function(TMDBCallbackBuilder) updates]) =>
      (new TMDBCallbackBuilder()..update(updates)).build();

  _$TMDBCallback._(
      {this.statusCode,
      this.statusMessage,
      this.id,
      this.success,
      this.errorMessage,
      this.results,
      this.mediaId})
      : super._() {
    if (statusCode == null) {
      throw new BuiltValueNullFieldError('TMDBCallback', 'statusCode');
    }
    if (statusMessage == null) {
      throw new BuiltValueNullFieldError('TMDBCallback', 'statusMessage');
    }
  }

  @override
  TMDBCallback rebuild(void Function(TMDBCallbackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TMDBCallbackBuilder toBuilder() => new TMDBCallbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TMDBCallback &&
        statusCode == other.statusCode &&
        statusMessage == other.statusMessage &&
        id == other.id &&
        success == other.success &&
        errorMessage == other.errorMessage &&
        results == other.results &&
        mediaId == other.mediaId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, statusCode.hashCode),
                            statusMessage.hashCode),
                        id.hashCode),
                    success.hashCode),
                errorMessage.hashCode),
            results.hashCode),
        mediaId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TMDBCallback')
          ..add('statusCode', statusCode)
          ..add('statusMessage', statusMessage)
          ..add('id', id)
          ..add('success', success)
          ..add('errorMessage', errorMessage)
          ..add('results', results)
          ..add('mediaId', mediaId))
        .toString();
  }
}

class TMDBCallbackBuilder
    implements Builder<TMDBCallback, TMDBCallbackBuilder> {
  _$TMDBCallback _$v;

  String _statusCode;
  String get statusCode => _$this._statusCode;
  set statusCode(String statusCode) => _$this._statusCode = statusCode;

  String _statusMessage;
  String get statusMessage => _$this._statusMessage;
  set statusMessage(String statusMessage) =>
      _$this._statusMessage = statusMessage;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _success;
  String get success => _$this._success;
  set success(String success) => _$this._success = success;

  String _errorMessage;
  String get errorMessage => _$this._errorMessage;
  set errorMessage(String errorMessage) => _$this._errorMessage = errorMessage;

  BuiltList _results;
  BuiltList get results => _$this._results;
  set results(BuiltList results) => _$this._results = results;

  String _mediaId;
  String get mediaId => _$this._mediaId;
  set mediaId(String mediaId) => _$this._mediaId = mediaId;

  TMDBCallbackBuilder();

  TMDBCallbackBuilder get _$this {
    if (_$v != null) {
      _statusCode = _$v.statusCode;
      _statusMessage = _$v.statusMessage;
      _id = _$v.id;
      _success = _$v.success;
      _errorMessage = _$v.errorMessage;
      _results = _$v.results;
      _mediaId = _$v.mediaId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TMDBCallback other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TMDBCallback;
  }

  @override
  void update(void Function(TMDBCallbackBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TMDBCallback build() {
    final _$result = _$v ??
        new _$TMDBCallback._(
            statusCode: statusCode,
            statusMessage: statusMessage,
            id: id,
            success: success,
            errorMessage: errorMessage,
            results: results,
            mediaId: mediaId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
