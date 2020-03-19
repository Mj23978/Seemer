// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_details_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EpisodeDetailsModel> _$episodeDetailsModelSerializer =
    new _$EpisodeDetailsModelSerializer();

class _$EpisodeDetailsModelSerializer
    implements StructuredSerializer<EpisodeDetailsModel> {
  @override
  final Iterable<Type> types = const [
    EpisodeDetailsModel,
    _$EpisodeDetailsModel
  ];
  @override
  final String wireName = 'EpisodeDetailsModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, EpisodeDetailsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'air_date',
      serializers.serialize(object.airDate,
          specifiedType: const FullType(String)),
      'crew',
      serializers.serialize(object.crew,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CrewModel)])),
      'episode_number',
      serializers.serialize(object.episodeNumber,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'season_number',
      serializers.serialize(object.seasonNumber,
          specifiedType: const FullType(int)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(String)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.guestStars != null) {
      result
        ..add('guest_stars')
        ..add(serializers.serialize(object.guestStars,
            specifiedType:
                const FullType(BuiltList, const [const FullType(CastModel)])));
    }
    if (object.productionCode != null) {
      result
        ..add('production_code')
        ..add(serializers.serialize(object.productionCode,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('still_path')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  EpisodeDetailsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EpisodeDetailsModelBuilder();

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
        case 'air_date':
          result.airDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'crew':
          result.crew.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CrewModel)]))
              as BuiltList<dynamic>);
          break;
        case 'guest_stars':
          result.guestStars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CastModel)]))
              as BuiltList<dynamic>);
          break;
        case 'episode_number':
          result.episodeNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'production_code':
          result.productionCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'season_number':
          result.seasonNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'still_path':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EpisodeDetailsModel extends EpisodeDetailsModel {
  @override
  final int id;
  @override
  final String airDate;
  @override
  final BuiltList<CrewModel> crew;
  @override
  final BuiltList<CastModel> guestStars;
  @override
  final String episodeNumber;
  @override
  final String name;
  @override
  final String overview;
  @override
  final String productionCode;
  @override
  final int seasonNumber;
  @override
  final String image;
  @override
  final String voteAverage;
  @override
  final String voteCount;

  factory _$EpisodeDetailsModel(
          [void Function(EpisodeDetailsModelBuilder) updates]) =>
      (new EpisodeDetailsModelBuilder()..update(updates)).build();

  _$EpisodeDetailsModel._(
      {this.id,
      this.airDate,
      this.crew,
      this.guestStars,
      this.episodeNumber,
      this.name,
      this.overview,
      this.productionCode,
      this.seasonNumber,
      this.image,
      this.voteAverage,
      this.voteCount})
      : super._() {
    if (airDate == null) {
      throw new BuiltValueNullFieldError('EpisodeDetailsModel', 'airDate');
    }
    if (crew == null) {
      throw new BuiltValueNullFieldError('EpisodeDetailsModel', 'crew');
    }
    if (episodeNumber == null) {
      throw new BuiltValueNullFieldError(
          'EpisodeDetailsModel', 'episodeNumber');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('EpisodeDetailsModel', 'name');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('EpisodeDetailsModel', 'overview');
    }
    if (seasonNumber == null) {
      throw new BuiltValueNullFieldError('EpisodeDetailsModel', 'seasonNumber');
    }
    if (voteAverage == null) {
      throw new BuiltValueNullFieldError('EpisodeDetailsModel', 'voteAverage');
    }
    if (voteCount == null) {
      throw new BuiltValueNullFieldError('EpisodeDetailsModel', 'voteCount');
    }
  }

  @override
  EpisodeDetailsModel rebuild(
          void Function(EpisodeDetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpisodeDetailsModelBuilder toBuilder() =>
      new EpisodeDetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EpisodeDetailsModel &&
        id == other.id &&
        airDate == other.airDate &&
        crew == other.crew &&
        guestStars == other.guestStars &&
        episodeNumber == other.episodeNumber &&
        name == other.name &&
        overview == other.overview &&
        productionCode == other.productionCode &&
        seasonNumber == other.seasonNumber &&
        image == other.image &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, id.hashCode),
                                                airDate.hashCode),
                                            crew.hashCode),
                                        guestStars.hashCode),
                                    episodeNumber.hashCode),
                                name.hashCode),
                            overview.hashCode),
                        productionCode.hashCode),
                    seasonNumber.hashCode),
                image.hashCode),
            voteAverage.hashCode),
        voteCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EpisodeDetailsModel')
          ..add('id', id)
          ..add('airDate', airDate)
          ..add('crew', crew)
          ..add('guestStars', guestStars)
          ..add('episodeNumber', episodeNumber)
          ..add('name', name)
          ..add('overview', overview)
          ..add('productionCode', productionCode)
          ..add('seasonNumber', seasonNumber)
          ..add('image', image)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount))
        .toString();
  }
}

class EpisodeDetailsModelBuilder
    implements Builder<EpisodeDetailsModel, EpisodeDetailsModelBuilder> {
  _$EpisodeDetailsModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _airDate;
  String get airDate => _$this._airDate;
  set airDate(String airDate) => _$this._airDate = airDate;

  ListBuilder<CrewModel> _crew;
  ListBuilder<CrewModel> get crew =>
      _$this._crew ??= new ListBuilder<CrewModel>();
  set crew(ListBuilder<CrewModel> crew) => _$this._crew = crew;

  ListBuilder<CastModel> _guestStars;
  ListBuilder<CastModel> get guestStars =>
      _$this._guestStars ??= new ListBuilder<CastModel>();
  set guestStars(ListBuilder<CastModel> guestStars) =>
      _$this._guestStars = guestStars;

  String _episodeNumber;
  String get episodeNumber => _$this._episodeNumber;
  set episodeNumber(String episodeNumber) =>
      _$this._episodeNumber = episodeNumber;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _productionCode;
  String get productionCode => _$this._productionCode;
  set productionCode(String productionCode) =>
      _$this._productionCode = productionCode;

  int _seasonNumber;
  int get seasonNumber => _$this._seasonNumber;
  set seasonNumber(int seasonNumber) => _$this._seasonNumber = seasonNumber;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _voteAverage;
  String get voteAverage => _$this._voteAverage;
  set voteAverage(String voteAverage) => _$this._voteAverage = voteAverage;

  String _voteCount;
  String get voteCount => _$this._voteCount;
  set voteCount(String voteCount) => _$this._voteCount = voteCount;

  EpisodeDetailsModelBuilder();

  EpisodeDetailsModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _airDate = _$v.airDate;
      _crew = _$v.crew?.toBuilder();
      _guestStars = _$v.guestStars?.toBuilder();
      _episodeNumber = _$v.episodeNumber;
      _name = _$v.name;
      _overview = _$v.overview;
      _productionCode = _$v.productionCode;
      _seasonNumber = _$v.seasonNumber;
      _image = _$v.image;
      _voteAverage = _$v.voteAverage;
      _voteCount = _$v.voteCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EpisodeDetailsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EpisodeDetailsModel;
  }

  @override
  void update(void Function(EpisodeDetailsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EpisodeDetailsModel build() {
    _$EpisodeDetailsModel _$result;
    try {
      _$result = _$v ??
          new _$EpisodeDetailsModel._(
              id: id,
              airDate: airDate,
              crew: crew.build(),
              guestStars: _guestStars?.build(),
              episodeNumber: episodeNumber,
              name: name,
              overview: overview,
              productionCode: productionCode,
              seasonNumber: seasonNumber,
              image: image,
              voteAverage: voteAverage,
              voteCount: voteCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'crew';
        crew.build();
        _$failedField = 'guestStars';
        _guestStars?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EpisodeDetailsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
