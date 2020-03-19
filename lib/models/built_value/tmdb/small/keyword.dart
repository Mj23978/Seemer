import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'keyword.g.dart';

abstract class Keyword implements Built<Keyword, KeywordBuilder> {
  @nullable
  int get id;

  String get name;

  Keyword._();

  factory Keyword([updates(KeywordBuilder b)]) = _$Keyword;

  static Serializer<Keyword> get serializer => _$keywordSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(Keyword.serializer, this));
  }

  static Keyword fromJson(String jsonString) {
    return serializers.deserializeWith(
        Keyword.serializer, json.decode(jsonString));
  }
}
