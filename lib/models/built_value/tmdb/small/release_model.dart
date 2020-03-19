import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'release_model.g.dart';

abstract class ReleaseModel
    implements Built<ReleaseModel, ReleaseModelBuilder> {
  String get certification;

  @BuiltValueField(wireName: 'iso_639_1')
  String get language;

  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  int get type;

  String get note;

  ReleaseModel._();

  factory ReleaseModel([updates(ReleaseModelBuilder b)]) = _$ReleaseModel;

  static Serializer<ReleaseModel> get serializer => _$releaseModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ReleaseModel.serializer, this));
  }

  static ReleaseModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReleaseModel.serializer, json.decode(jsonString));
  }
}
