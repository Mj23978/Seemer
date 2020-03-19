import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'seasons_model.g.dart';

abstract class SeasonsModel
    implements Built<SeasonsModel, SeasonsModelBuilder> {
  @BuiltValueField(wireName: 'air_date')
  String get airDate;

  @BuiltValueField(wireName: 'episode_count')
  int get episodeCount;

  int get id;

  String get name;

  String get overview;

  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get poster;

  @BuiltValueField(wireName: 'season_number')
  int get seasonNumber;

  SeasonsModel._();

  factory SeasonsModel([updates(SeasonsModelBuilder b)]) = _$SeasonsModel;

  static Serializer<SeasonsModel> get serializer => _$seasonsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SeasonsModel.serializer, this));
  }

  static SeasonsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        SeasonsModel.serializer, json.decode(jsonString));
  }
}
