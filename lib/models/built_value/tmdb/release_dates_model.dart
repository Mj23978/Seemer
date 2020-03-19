import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './serializers.dart';
import './small/release_model.dart';

part 'release_dates_model.g.dart';

abstract class ReleaseDatesModel
    implements Built<ReleaseDatesModel, ReleaseDatesModelBuilder> {
  @nullable
  int get id;

  BuiltList<ReleaseDatesResults> get results;

  ReleaseDatesModel._();

  factory ReleaseDatesModel([updates(ReleaseDatesModelBuilder b)]) =
      _$ReleaseDatesModel;

  static Serializer<ReleaseDatesModel> get serializer =>
      _$releaseDatesModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ReleaseDatesModel.serializer, this));
  }

  static ReleaseDatesModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReleaseDatesModel.serializer, json.decode(jsonString));
  }
}

abstract class ReleaseDatesResults
    implements Built<ReleaseDatesResults, ReleaseDatesResultsBuilder> {
  @BuiltValueField(wireName: 'iso_3166_1')
  String get country;

  @BuiltValueField(wireName: 'release_dates')
  BuiltList<ReleaseModel> get releaseDates;

  ReleaseDatesResults._();

  factory ReleaseDatesResults([updates(ReleaseDatesResultsBuilder b)]) =
      _$ReleaseDatesResults;

  static Serializer<ReleaseDatesResults> get serializer =>
      _$releaseDatesResultsSerializer;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ReleaseDatesResults.serializer, this));
  }

  static ReleaseDatesResults fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReleaseDatesResults.serializer, json.decode(jsonString));
  }
}
