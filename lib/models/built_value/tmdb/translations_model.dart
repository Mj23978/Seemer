import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './serializers.dart';

part 'translations_model.g.dart';

abstract class TranslationsModel
    implements Built<TranslationsModel, TranslationsModelBuilder> {
  @nullable
  int get id;

  BuiltList<Translations> get results;

  TranslationsModel._();

  factory TranslationsModel([updates(TranslationsModelBuilder b)]) =
      _$TranslationsModel;

  static Serializer<TranslationsModel> get serializer =>
      _$translationsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(TranslationsModel.serializer, this));
  }

  static TranslationsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        TranslationsModel.serializer, json.decode(jsonString));
  }
}

abstract class Translations
    implements Built<Translations, TranslationsBuilder> {
  @BuiltValueField(wireName: 'iso_3166_1')
  String get country;

  @BuiltValueField(wireName: 'iso_639_1')
  String get language;

  String get name;

  @BuiltValueField(wireName: 'english_name')
  String get englishName;

  TranslationsData get data;

  Translations._();

  factory Translations([updates(TranslationsBuilder b)]) = _$Translations;

  static Serializer<Translations> get serializer => _$translationsSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(Translations.serializer, this));
  }

  static Translations fromJson(String jsonString) {
    return serializers.deserializeWith(
        Translations.serializer, json.decode(jsonString));
  }
}

abstract class TranslationsData
    implements Built<TranslationsData, TranslationsDataBuilder> {
  String get title;

  String get overview;

  String get homepage;

  TranslationsData._();

  factory TranslationsData([updates(TranslationsDataBuilder b)]) =
      _$TranslationsData;

  static Serializer<TranslationsData> get serializer =>
      _$translationsDataSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(TranslationsData.serializer, this));
  }

  static TranslationsData fromJson(String jsonString) {
    return serializers.deserializeWith(
        TranslationsData.serializer, json.decode(jsonString));
  }
}
