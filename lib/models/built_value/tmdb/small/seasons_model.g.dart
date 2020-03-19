// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasons_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SeasonsModel> _$seasonsModelSerializer =
    new _$SeasonsModelSerializer();

class _$SeasonsModelSerializer implements StructuredSerializer<SeasonsModel> {
  @override
  final Iterable<Type> types = const [SeasonsModel, _$SeasonsModel];
  @override
  final String wireName = 'SeasonsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SeasonsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'air_date',
      serializers.serialize(object.airDate,
          specifiedType: const FullType(String)),
      'episode_count',
      serializers.serialize(object.episodeCount,
          specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'season_number',
      serializers.serialize(object.seasonNumber,
          specifiedType: const FullType(int)),
    ];
    if (object.poster != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.poster,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SeasonsModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeasonsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'air_date':
          result.airDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episode_count':
          result.episodeCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poster_path':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'season_number':
          result.seasonNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$SeasonsModel extends SeasonsModel {
  @override
  final String airDate;
  @override
  final int episodeCount;
  @override
  final int id;
  @override
  final String name;
  @override
  final String overview;
  @override
  final String poster;
  @override
  final int seasonNumber;

  factory _$SeasonsModel([void Function(SeasonsModelBuilder) updates]) =>
      (new SeasonsModelBuilder()..update(updates)).build();

  _$SeasonsModel._(
      {this.airDate,
      this.episodeCount,
      this.id,
      this.name,
      this.overview,
      this.poster,
      this.seasonNumber})
      : super._() {
    if (airDate == null) {
      throw new BuiltValueNullFieldError('SeasonsModel', 'airDate');
    }
    if (episodeCount == null) {
      throw new BuiltValueNullFieldError('SeasonsModel', 'episodeCount');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('SeasonsModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('SeasonsModel', 'name');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('SeasonsModel', 'overview');
    }
    if (seasonNumber == null) {
      throw new BuiltValueNullFieldError('SeasonsModel', 'seasonNumber');
    }
  }

  @override
  SeasonsModel rebuild(void Function(SeasonsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonsModelBuilder toBuilder() => new SeasonsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeasonsModel &&
        airDate == other.airDate &&
        episodeCount == other.episodeCount &&
        id == other.id &&
        name == other.name &&
        overview == other.overview &&
        poster == other.poster &&
        seasonNumber == other.seasonNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, airDate.hashCode), episodeCount.hashCode),
                        id.hashCode),
                    name.hashCode),
                overview.hashCode),
            poster.hashCode),
        seasonNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SeasonsModel')
          ..add('airDate', airDate)
          ..add('episodeCount', episodeCount)
          ..add('id', id)
          ..add('name', name)
          ..add('overview', overview)
          ..add('poster', poster)
          ..add('seasonNumber', seasonNumber))
        .toString();
  }
}

class SeasonsModelBuilder
    implements Builder<SeasonsModel, SeasonsModelBuilder> {
  _$SeasonsModel _$v;

  String _airDate;
  String get airDate => _$this._airDate;
  set airDate(String airDate) => _$this._airDate = airDate;

  int _episodeCount;
  int get episodeCount => _$this._episodeCount;
  set episodeCount(int episodeCount) => _$this._episodeCount = episodeCount;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _poster;
  String get poster => _$this._poster;
  set poster(String poster) => _$this._poster = poster;

  int _seasonNumber;
  int get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int seasonNumber) => _$this._seasonNumber = seasonNumber;

  SeasonsModelBuilder();

  SeasonsModelBuilder get _$this {
    if (_$v != null) {
      _airDate = _$v.airDate;
      _episodeCount = _$v.episodeCount;
      _id = _$v.id;
      _name = _$v.name;
      _overview = _$v.overview;
      _poster = _$v.poster;
      _seasonNumber = _$v.seasonNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeasonsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SeasonsModel;
  }

  @override
  void update(void Function(SeasonsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SeasonsModel build() {
    final _$result = _$v ??
        new _$SeasonsModel._(
            airDate: airDate,
            episodeCount: episodeCount,
            id: id,
            name: name,
            overview: overview,
            poster: poster,
            seasonNumber: seasonNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
