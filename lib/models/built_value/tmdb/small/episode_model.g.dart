// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EpisodeModel> _$episodeModelSerializer =
    new _$EpisodeModelSerializer();

class _$EpisodeModelSerializer implements StructuredSerializer<EpisodeModel> {
  @override
  final Iterable<Type> types = const [EpisodeModel, _$EpisodeModel];
  @override
  final String wireName = 'EpisodeModel';

  @override
  Iterable<Object> serialize(Serializers serializers, EpisodeModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'air_date',
      serializers.serialize(object.airDate,
          specifiedType: const FullType(String)),
      'episode_number',
      serializers.serialize(object.episodeNumber,
          specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'production_code',
      serializers.serialize(object.productionCode,
          specifiedType: const FullType(String)),
      'season_number',
      serializers.serialize(object.seasonNumber,
          specifiedType: const FullType(int)),
      'show_id',
      serializers.serialize(object.showId, specifiedType: const FullType(int)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
    ];
    if (object.image != null) {
      result
        ..add('still_path')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  EpisodeModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EpisodeModelBuilder();

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
        case 'episode_number':
          result.episodeNumber = serializers.deserialize(value,
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
        case 'production_code':
          result.productionCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'season_number':
          result.seasonNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'show_id':
          result.showId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'still_path':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$EpisodeModel extends EpisodeModel {
  @override
  final String airDate;
  @override
  final int episodeNumber;
  @override
  final int id;
  @override
  final String name;
  @override
  final String overview;
  @override
  final String productionCode;
  @override
  final int seasonNumber;
  @override
  final int showId;
  @override
  final String image;
  @override
  final double voteAverage;
  @override
  final int voteCount;
  @override
  final int rating;

  factory _$EpisodeModel([void Function(EpisodeModelBuilder) updates]) =>
      (new EpisodeModelBuilder()..update(updates)).build();

  _$EpisodeModel._(
      {this.airDate,
      this.episodeNumber,
      this.id,
      this.name,
      this.overview,
      this.productionCode,
      this.seasonNumber,
      this.showId,
      this.image,
      this.voteAverage,
      this.voteCount,
      this.rating})
      : super._() {
    if (airDate == null) {
      throw new BuiltValueNullFieldError('EpisodeModel', 'airDate');
    }
    if (episodeNumber == null) {
      throw new BuiltValueNullFieldError('EpisodeModel', 'episodeNumber');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('EpisodeModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('EpisodeModel', 'name');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('EpisodeModel', 'overview');
    }
    if (productionCode == null) {
      throw new BuiltValueNullFieldError('EpisodeModel', 'productionCode');
    }
    if (seasonNumber == null) {
      throw new BuiltValueNullFieldError('EpisodeModel', 'seasonNumber');
    }
    if (showId == null) {
      throw new BuiltValueNullFieldError('EpisodeModel', 'showId');
    }
    if (voteAverage == null) {
      throw new BuiltValueNullFieldError('EpisodeModel', 'voteAverage');
    }
    if (voteCount == null) {
      throw new BuiltValueNullFieldError('EpisodeModel', 'voteCount');
    }
  }

  @override
  EpisodeModel rebuild(void Function(EpisodeModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EpisodeModelBuilder toBuilder() => new EpisodeModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EpisodeModel &&
        airDate == other.airDate &&
        episodeNumber == other.episodeNumber &&
        id == other.id &&
        name == other.name &&
        overview == other.overview &&
        productionCode == other.productionCode &&
        seasonNumber == other.seasonNumber &&
        showId == other.showId &&
        image == other.image &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount &&
        rating == other.rating;
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
                                            $jc($jc(0, airDate.hashCode),
                                                episodeNumber.hashCode),
                                            id.hashCode),
                                        name.hashCode),
                                    overview.hashCode),
                                productionCode.hashCode),
                            seasonNumber.hashCode),
                        showId.hashCode),
                    image.hashCode),
                voteAverage.hashCode),
            voteCount.hashCode),
        rating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EpisodeModel')
          ..add('airDate', airDate)
          ..add('episodeNumber', episodeNumber)
          ..add('id', id)
          ..add('name', name)
          ..add('overview', overview)
          ..add('productionCode', productionCode)
          ..add('seasonNumber', seasonNumber)
          ..add('showId', showId)
          ..add('image', image)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount)
          ..add('rating', rating))
        .toString();
  }
}

class EpisodeModelBuilder
    implements Builder<EpisodeModel, EpisodeModelBuilder> {
  _$EpisodeModel _$v;

  String _airDate;
  String get airDate => _$this._airDate;
  set airDate(String airDate) => _$this._airDate = airDate;

  int _episodeNumber;
  int get episodeNumber => _$this._episodeNumber;
  set episodeNumber(int episodeNumber) => _$this._episodeNumber = episodeNumber;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

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

  int _showId;
  int get showId => _$this._showId;
  set showId(int showId) => _$this._showId = showId;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  int _voteCount;
  int get voteCount => _$this._voteCount;
  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  EpisodeModelBuilder();

  EpisodeModelBuilder get _$this {
    if (_$v != null) {
      _airDate = _$v.airDate;
      _episodeNumber = _$v.episodeNumber;
      _id = _$v.id;
      _name = _$v.name;
      _overview = _$v.overview;
      _productionCode = _$v.productionCode;
      _seasonNumber = _$v.seasonNumber;
      _showId = _$v.showId;
      _image = _$v.image;
      _voteAverage = _$v.voteAverage;
      _voteCount = _$v.voteCount;
      _rating = _$v.rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EpisodeModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EpisodeModel;
  }

  @override
  void update(void Function(EpisodeModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EpisodeModel build() {
    final _$result = _$v ??
        new _$EpisodeModel._(
            airDate: airDate,
            episodeNumber: episodeNumber,
            id: id,
            name: name,
            overview: overview,
            productionCode: productionCode,
            seasonNumber: seasonNumber,
            showId: showId,
            image: image,
            voteAverage: voteAverage,
            voteCount: voteCount,
            rating: rating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
