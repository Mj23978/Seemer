import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'base_tv_model.g.dart';

abstract class BaseTvModel implements Built<BaseTvModel, BaseTvModelBuilder> {
  @nullable
  int get page;

  BuiltList<BaseTvResults> get results;

  @nullable
  @BuiltValueField(wireName: 'total_results')
  int get totalResults;

  @nullable
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  BaseTvModel._();

  factory BaseTvModel([updates(BaseTvModelBuilder b)]) = _$BaseTvModel;

  static Serializer<BaseTvModel> get serializer => _$baseTvModelSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(BaseTvModel.serializer, this));
  }

  static BaseTvModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        BaseTvModel.serializer, json.decode(jsonString));
  }
}

abstract class BaseTvResults
    implements Built<BaseTvResults, BaseTvResultsBuilder> {
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  double get popularity;

  int get id;

  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  String get overview;

  @BuiltValueField(wireName: 'first_air_date')
  String get firstAirDate;

  @BuiltValueField(wireName: 'origin_country')
  BuiltList<String> get originCountry;

  @BuiltValueField(wireName: 'genre_ids')
  BuiltList<int> get genreIDs;

  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  String get name;

  @nullable
  int get rating;

  @BuiltValueField(wireName: 'original_name')
  String get originalName;

  @nullable
  @BuiltValueField(wireName: 'credit_id')
  String get creditId;

  @nullable
  String get character;

  @nullable
  String get department;

  @nullable
  String get job;

  BaseTvResults._();

  factory BaseTvResults([updates(BaseTvResultsBuilder b)]) = _$BaseTvResults;

  static Serializer<BaseTvResults> get serializer => _$baseTvResultsSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(BaseTvResults.serializer, this));
  }

  static BaseTvResults fromJson(String jsonString) {
    return serializers.deserializeWith(
        BaseTvResults.serializer, json.decode(jsonString));
  }
}
