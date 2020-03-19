import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'episode_model.g.dart';

abstract class EpisodeModel
    implements Built<EpisodeModel, EpisodeModelBuilder> {
  @BuiltValueField(wireName: 'air_date')
  String get airDate;

  @BuiltValueField(wireName: 'episode_number')
  int get episodeNumber;

  int get id;

  String get name;

  String get overview;

  @BuiltValueField(wireName: 'production_code')
  String get productionCode;

  @BuiltValueField(wireName: 'season_number')
  int get seasonNumber;

  @BuiltValueField(wireName: 'show_id')
  int get showId;

  @nullable
  @BuiltValueField(wireName: 'still_path')
  String get image;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  @nullable
  int get rating;

  EpisodeModel._();

  factory EpisodeModel([updates(EpisodeModelBuilder b)]) = _$EpisodeModel;

  static Serializer<EpisodeModel> get serializer => _$episodeModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(EpisodeModel.serializer, this));
  }

  static EpisodeModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        EpisodeModel.serializer, json.decode(jsonString));
  }
}
