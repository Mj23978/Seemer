import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './serializers.dart';
import './movie/base_movie_model.dart';

part 'keyword_movie_model.g.dart';

abstract class KeywordMovieModel
    implements Built<KeywordMovieModel, KeywordMovieModelBuilder> {
  @nullable
  int get page;

  @nullable
  int get id;

  BuiltList<BaseMovieResults> get results;

  @nullable
  @BuiltValueField(wireName: 'total_results')
  int get totalResults;

  @nullable
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  KeywordMovieModel._();

  factory KeywordMovieModel([updates(KeywordMovieModelBuilder b)]) =
      _$KeywordMovieModel;

  static Serializer<KeywordMovieModel> get serializer =>
      _$keywordMovieModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(KeywordMovieModel.serializer, this));
  }

  static KeywordMovieModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        KeywordMovieModel.serializer, json.decode(jsonString));
  }
}
