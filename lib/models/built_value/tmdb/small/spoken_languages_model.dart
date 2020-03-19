import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'spoken_languages_model.g.dart';

abstract class SpokenLanguagesModel
    implements Built<SpokenLanguagesModel, SpokenLanguagesModelBuilder> {
  String get language;

  @BuiltValueField(wireName: 'iso_3166_1')
  String get countryCode;

  SpokenLanguagesModel._();

  factory SpokenLanguagesModel([updates(SpokenLanguagesModelBuilder b)]) =
      _$SpokenLanguagesModel;

  static Serializer<SpokenLanguagesModel> get serializer =>
      _$spokenLanguagesModelSerializer;
  String toJson() {
    return json.encode(
        serializers.serializeWith(SpokenLanguagesModel.serializer, this));
  }

  static SpokenLanguagesModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        SpokenLanguagesModel.serializer, json.decode(jsonString));
  }
}
