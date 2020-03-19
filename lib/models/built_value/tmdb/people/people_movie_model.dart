import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";
import '../movie/base_movie_model.dart';

import '../serializers.dart';

part 'people_movie_model.g.dart';

abstract class PeopleMovieModel
    implements Built<PeopleMovieModel, PeopleMovieModelBuilder> {
  @nullable
  int get id;

  BuiltList<BaseMovieResults> get cast;

  BuiltList<BaseMovieResults> get crew;

  PeopleMovieModel._();

  factory PeopleMovieModel([updates(PeopleMovieModelBuilder b)]) =
      _$PeopleMovieModel;

  static Serializer<PeopleMovieModel> get serializer =>
      _$peopleMovieModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PeopleMovieModel.serializer, this));
  }

  static PeopleMovieModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        PeopleMovieModel.serializer, json.decode(jsonString));
  }
}
