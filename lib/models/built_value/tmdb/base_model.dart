import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './serializers.dart';

part 'base_model.g.dart';

abstract class BaseModel implements Built<BaseModel, BaseModelBuilder> {
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  @nullable
  bool get adult;

  double get popularity;

  @nullable
  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  @nullable
  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;

  int get id;

  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  String get overview;

  @nullable
  String get title;

  @nullable
  @BuiltValueField(wireName: 'general_ids')
  BuiltList<int> get generalIds;

  @nullable
  @BuiltValueField(wireName: 'media_type')
  String get mediaType;

  @nullable
  @BuiltValueField(wireName: 'first_air_date')
  String get firstAirDate;

  @nullable
  @BuiltValueField(wireName: 'origin_country')
  BuiltList<String> get originCountry;

  @nullable
  @BuiltValueField(wireName: 'genre_ids')
  BuiltList<int> get genreIDs;

  @nullable
  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  @nullable
  String get name;

  @nullable
  int get rating;

  @nullable
  @BuiltValueField(wireName: 'original_name')
  String get originalName;

  BaseModel._();

  factory BaseModel([updates(BaseModelBuilder b)]) = _$BaseModel;

  static Serializer<BaseModel> get serializer => _$baseModelSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(BaseModel.serializer, this));
  }

  static BaseModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        BaseModel.serializer, json.decode(jsonString));
  }
}
