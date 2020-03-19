import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../small/cast_model.dart';
import '../small/crew_model.dart';

import '../serializers.dart';

part 'episode_details_model.g.dart';

abstract class EpisodeDetailsModel
    implements Built<EpisodeDetailsModel, EpisodeDetailsModelBuilder> {
  @nullable
  int get id;

  @BuiltValueField(wireName: 'air_date')
  String get airDate;

  BuiltList<CrewModel> get crew;

  @nullable
  @BuiltValueField(wireName: 'guest_stars')
  BuiltList<CastModel> get guestStars;

  @BuiltValueField(wireName: 'episode_number')
  String get episodeNumber;

  String get name;

  String get overview;

  @nullable
  @BuiltValueField(wireName: 'production_code')
  String get productionCode;

  @BuiltValueField(wireName: 'season_number')
  int get seasonNumber;

  @nullable
  @BuiltValueField(wireName: 'still_path')
  String get image;

  @BuiltValueField(wireName: 'vote_average')
  String get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  String get voteCount;

  EpisodeDetailsModel._();

  factory EpisodeDetailsModel([updates(EpisodeDetailsModelBuilder b)]) =
      _$EpisodeDetailsModel;

  static Serializer<EpisodeDetailsModel> get serializer =>
      _$episodeDetailsModelSerializer;
  String toJson() {
    return json.encode(
        serializers.serializeWith(EpisodeDetailsModel.serializer, this));
  }

  static EpisodeDetailsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        EpisodeDetailsModel.serializer, json.decode(jsonString));
  }
}
