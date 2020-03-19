// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season_details_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SeasonDetailsModel> _$seasonDetailsModelSerializer =
    new _$SeasonDetailsModelSerializer();

class _$SeasonDetailsModelSerializer
    implements StructuredSerializer<SeasonDetailsModel> {
  @override
  final Iterable<Type> types = const [SeasonDetailsModel, _$SeasonDetailsModel];
  @override
  final String wireName = 'SeasonDetailsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SeasonDetailsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'air_date',
      serializers.serialize(object.airDate,
          specifiedType: const FullType(String)),
      'episodes',
      serializers.serialize(object.episodes,
          specifiedType: const FullType(
              BuiltList, const [const FullType(EpisodeDetailsModel)])),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'season_number',
      serializers.serialize(object.seasonNumber,
          specifiedType: const FullType(int)),
    ];
    if (object.secondID != null) {
      result
        ..add('_id')
        ..add(serializers.serialize(object.secondID,
            specifiedType: const FullType(String)));
    }
    if (object.poster != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.poster,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SeasonDetailsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeasonDetailsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '_id':
          result.secondID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'air_date':
          result.airDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'episodes':
          result.episodes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EpisodeDetailsModel)]))
              as BuiltList<dynamic>);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$SeasonDetailsModel extends SeasonDetailsModel {
  @override
  final String secondID;
  @override
  final String airDate;
  @override
  final BuiltList<EpisodeDetailsModel> episodes;
  @override
  final String name;
  @override
  final String overview;
  @override
  final int id;
  @override
  final String poster;
  @override
  final int seasonNumber;

  factory _$SeasonDetailsModel(
          [void Function(SeasonDetailsModelBuilder) updates]) =>
      (new SeasonDetailsModelBuilder()..update(updates)).build();

  _$SeasonDetailsModel._(
      {this.secondID,
      this.airDate,
      this.episodes,
      this.name,
      this.overview,
      this.id,
      this.poster,
      this.seasonNumber})
      : super._() {
    if (airDate == null) {
      throw new BuiltValueNullFieldError('SeasonDetailsModel', 'airDate');
    }
    if (episodes == null) {
      throw new BuiltValueNullFieldError('SeasonDetailsModel', 'episodes');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('SeasonDetailsModel', 'name');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('SeasonDetailsModel', 'overview');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('SeasonDetailsModel', 'id');
    }
    if (seasonNumber == null) {
      throw new BuiltValueNullFieldError('SeasonDetailsModel', 'seasonNumber');
    }
  }

  @override
  SeasonDetailsModel rebuild(
          void Function(SeasonDetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonDetailsModelBuilder toBuilder() =>
      new SeasonDetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeasonDetailsModel &&
        secondID == other.secondID &&
        airDate == other.airDate &&
        episodes == other.episodes &&
        name == other.name &&
        overview == other.overview &&
        id == other.id &&
        poster == other.poster &&
        seasonNumber == other.seasonNumber;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, secondID.hashCode), airDate.hashCode),
                            episodes.hashCode),
                        name.hashCode),
                    overview.hashCode),
                id.hashCode),
            poster.hashCode),
        seasonNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SeasonDetailsModel')
          ..add('secondID', secondID)
          ..add('airDate', airDate)
          ..add('episodes', episodes)
          ..add('name', name)
          ..add('overview', overview)
          ..add('id', id)
          ..add('poster', poster)
          ..add('seasonNumber', seasonNumber))
        .toString();
  }
}

class SeasonDetailsModelBuilder
    implements Builder<SeasonDetailsModel, SeasonDetailsModelBuilder> {
  _$SeasonDetailsModel _$v;

  String _secondID;
  String get secondID => _$this._secondID;
  set secondID(String secondID) => _$this._secondID = secondID;

  String _airDate;
  String get airDate => _$this._airDate;
  set airDate(String airDate) => _$this._airDate = airDate;

  ListBuilder<EpisodeDetailsModel> _episodes;
  ListBuilder<EpisodeDetailsModel> get episodes =>
      _$this._episodes ??= new ListBuilder<EpisodeDetailsModel>();
  set episodes(ListBuilder<EpisodeDetailsModel> episodes) =>
      _$this._episodes = episodes;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _poster;
  String get poster => _$this._poster;
  set poster(String poster) => _$this._poster = poster;

  int _seasonNumber;
  int get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int seasonNumber) => _$this._seasonNumber = seasonNumber;

  SeasonDetailsModelBuilder();

  SeasonDetailsModelBuilder get _$this {
    if (_$v != null) {
      _secondID = _$v.secondID;
      _airDate = _$v.airDate;
      _episodes = _$v.episodes?.toBuilder();
      _name = _$v.name;
      _overview = _$v.overview;
      _id = _$v.id;
      _poster = _$v.poster;
      _seasonNumber = _$v.seasonNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeasonDetailsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SeasonDetailsModel;
  }

  @override
  void update(void Function(SeasonDetailsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SeasonDetailsModel build() {
    _$SeasonDetailsModel _$result;
    try {
      _$result = _$v ??
          new _$SeasonDetailsModel._(
              secondID: secondID,
              airDate: airDate,
              episodes: episodes.build(),
              name: name,
              overview: overview,
              id: id,
              poster: poster,
              seasonNumber: seasonNumber);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'episodes';
        episodes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SeasonDetailsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
