import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './serializers.dart';

part 'keywords_model.g.dart';

abstract class KeywordsModel
    implements Built<KeywordsModel, KeywordsModelBuilder> {
  int get id;

  BuiltList<Keywords> get keywords;

  KeywordsModel._();

  factory KeywordsModel([updates(KeywordsModelBuilder b)]) = _$KeywordsModel;

  static Serializer<KeywordsModel> get serializer => _$keywordsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(KeywordsModel.serializer, this));
  }

  static KeywordsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        KeywordsModel.serializer, json.decode(jsonString));
  }
}

abstract class Keywords implements Built<Keywords, KeywordsBuilder> {
  int get id;

  String get name;

  Keywords._();

  factory Keywords([updates(KeywordsBuilder b)]) = _$Keywords;

  static Serializer<Keywords> get serializer => _$keywordsSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(Keywords.serializer, this));
  }

  static Keywords fromJson(String jsonString) {
    return serializers.deserializeWith(
        Keywords.serializer, json.decode(jsonString));
  }
}
