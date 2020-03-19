import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'genres_model.g.dart';

abstract class GenresModel implements Built<GenresModel, GenresModelBuilder> {
  int get id;

  String get name;

  GenresModel._();

  factory GenresModel([updates(GenresModelBuilder b)]) = _$GenresModel;

  static Serializer<GenresModel> get serializer => _$genresModelSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(GenresModel.serializer, this));
  }

  static GenresModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        GenresModel.serializer, json.decode(jsonString));
  }
}
