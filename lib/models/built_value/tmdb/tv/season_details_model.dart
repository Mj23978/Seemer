import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import 'episode_details_model.dart';

import '../serializers.dart';

part 'season_details_model.g.dart';

abstract class SeasonDetailsModel
    implements Built<SeasonDetailsModel, SeasonDetailsModelBuilder> {
  @nullable
  @BuiltValueField(wireName: '_id')
  String get secondID;

  @BuiltValueField(wireName: 'air_date')
  String get airDate;

  BuiltList<EpisodeDetailsModel> get episodes;

  String get name;

  String get overview;

  int get id;

  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get poster;

  @BuiltValueField(wireName: 'season_number')
  int get seasonNumber;

  SeasonDetailsModel._();

  factory SeasonDetailsModel([updates(SeasonDetailsModelBuilder b)]) =
      _$SeasonDetailsModel;

  static Serializer<SeasonDetailsModel> get serializer =>
      _$seasonDetailsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SeasonDetailsModel.serializer, this));
  }

  static SeasonDetailsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        SeasonDetailsModel.serializer, json.decode(jsonString));
  }
}
