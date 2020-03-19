// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_ids_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExternalIDsModel> _$externalIDsModelSerializer =
    new _$ExternalIDsModelSerializer();

class _$ExternalIDsModelSerializer
    implements StructuredSerializer<ExternalIDsModel> {
  @override
  final Iterable<Type> types = const [ExternalIDsModel, _$ExternalIDsModel];
  @override
  final String wireName = 'ExternalIDsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ExternalIDsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.imdbId != null) {
      result
        ..add('imdb_id')
        ..add(serializers.serialize(object.imdbId,
            specifiedType: const FullType(String)));
    }
    if (object.tvDBId != null) {
      result
        ..add('tvdb_id')
        ..add(serializers.serialize(object.tvDBId,
            specifiedType: const FullType(String)));
    }
    if (object.instagramId != null) {
      result
        ..add('instagram_id')
        ..add(serializers.serialize(object.instagramId,
            specifiedType: const FullType(String)));
    }
    if (object.twitterId != null) {
      result
        ..add('twitter_id')
        ..add(serializers.serialize(object.twitterId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ExternalIDsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExternalIDsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'imdb_id':
          result.imdbId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tvdb_id':
          result.tvDBId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instagram_id':
          result.instagramId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'twitter_id':
          result.twitterId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ExternalIDsModel extends ExternalIDsModel {
  @override
  final int id;
  @override
  final String imdbId;
  @override
  final String tvDBId;
  @override
  final String instagramId;
  @override
  final String twitterId;

  factory _$ExternalIDsModel(
          [void Function(ExternalIDsModelBuilder) updates]) =>
      (new ExternalIDsModelBuilder()..update(updates)).build();

  _$ExternalIDsModel._(
      {this.id, this.imdbId, this.tvDBId, this.instagramId, this.twitterId})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ExternalIDsModel', 'id');
    }
  }

  @override
  ExternalIDsModel rebuild(void Function(ExternalIDsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalIDsModelBuilder toBuilder() =>
      new ExternalIDsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalIDsModel &&
        id == other.id &&
        imdbId == other.imdbId &&
        tvDBId == other.tvDBId &&
        instagramId == other.instagramId &&
        twitterId == other.twitterId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), imdbId.hashCode), tvDBId.hashCode),
            instagramId.hashCode),
        twitterId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExternalIDsModel')
          ..add('id', id)
          ..add('imdbId', imdbId)
          ..add('tvDBId', tvDBId)
          ..add('instagramId', instagramId)
          ..add('twitterId', twitterId))
        .toString();
  }
}

class ExternalIDsModelBuilder
    implements Builder<ExternalIDsModel, ExternalIDsModelBuilder> {
  _$ExternalIDsModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _imdbId;
  String get imdbId => _$this._imdbId;
  set imdbId(String imdbId) => _$this._imdbId = imdbId;

  String _tvDBId;
  String get tvDBId => _$this._tvDBId;
  set tvDBId(String tvDBId) => _$this._tvDBId = tvDBId;

  String _instagramId;
  String get instagramId => _$this._instagramId;
  set instagramId(String instagramId) => _$this._instagramId = instagramId;

  String _twitterId;
  String get twitterId => _$this._twitterId;
  set twitterId(String twitterId) => _$this._twitterId = twitterId;

  ExternalIDsModelBuilder();

  ExternalIDsModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _imdbId = _$v.imdbId;
      _tvDBId = _$v.tvDBId;
      _instagramId = _$v.instagramId;
      _twitterId = _$v.twitterId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalIDsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExternalIDsModel;
  }

  @override
  void update(void Function(ExternalIDsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExternalIDsModel build() {
    final _$result = _$v ??
        new _$ExternalIDsModel._(
            id: id,
            imdbId: imdbId,
            tvDBId: tvDBId,
            instagramId: instagramId,
            twitterId: twitterId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
