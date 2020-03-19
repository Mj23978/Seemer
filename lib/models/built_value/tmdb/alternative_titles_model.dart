import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";
import 'package:built_collection/built_collection.dart';

import './serializers.dart';

part 'alternative_titles_model.g.dart';

abstract class AlternativeTitlesModel
    implements Built<AlternativeTitlesModel, AlternativeTitlesModelBuilder> {
  int get id;

  BuiltList<AlternativeTitlesResults> get results;

  AlternativeTitlesModel._();

  factory AlternativeTitlesModel([updates(AlternativeTitlesModelBuilder b)]) =
      _$AlternativeTitlesModel;

  static Serializer<AlternativeTitlesModel> get serializer =>
      _$alternativeTitlesModelSerializer;
  String toJson() {
    return json.encode(
        serializers.serializeWith(AlternativeTitlesModel.serializer, this));
  }

  static AlternativeTitlesModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        AlternativeTitlesModel.serializer, json.decode(jsonString));
  }
}

abstract class AlternativeTitlesResults
    implements
        Built<AlternativeTitlesResults, AlternativeTitlesResultsBuilder> {
  String get title;

  @BuiltValueField(wireName: 'iso_3166_1')
  String get countryCode;

  @nullable
  String get type;

  AlternativeTitlesResults._();

  factory AlternativeTitlesResults(
          [updates(AlternativeTitlesResultsBuilder b)]) =
      _$AlternativeTitlesResults;

  static Serializer<AlternativeTitlesResults> get serializer =>
      _$alternativeTitlesResultsSerializer;
  String toJson() {
    return json.encode(
        serializers.serializeWith(AlternativeTitlesResults.serializer, this));
  }

  static AlternativeTitlesResults fromJson(String jsonString) {
    return serializers.deserializeWith(
        AlternativeTitlesResults.serializer, json.decode(jsonString));
  }
}
