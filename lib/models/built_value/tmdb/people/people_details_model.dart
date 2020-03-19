import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'people_details_model.g.dart';

abstract class PeopleDetailsModel
    implements Built<PeopleDetailsModel, PeopleDetailsModelBuilder> {
  @nullable
  String get birthday;

  @BuiltValueField(wireName: 'known_for_department')
  String get knownForDepartment;

  @nullable
  String get deathday;

  int get id;

  String get name;

  @BuiltValueField(wireName: 'also_know_as')
  BuiltList<String> get alsoKnowAs;

  int get gender;

  String get biography;

  double get popularity;

  @nullable
  @BuiltValueField(wireName: 'place_of_birth')
  String get placeOfBirth;

  @nullable
  @BuiltValueField(wireName: 'profile_path')
  String get image;

  bool get adult;

  @BuiltValueField(wireName: 'imdb_id')
  String get imdbId;

  @nullable
  String get homepage;

  PeopleDetailsModel._();

  factory PeopleDetailsModel([updates(PeopleDetailsModelBuilder b)]) =
      _$PeopleDetailsModel;

  static Serializer<PeopleDetailsModel> get serializer =>
      _$peopleDetailsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PeopleDetailsModel.serializer, this));
  }

  static PeopleDetailsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        PeopleDetailsModel.serializer, json.decode(jsonString));
  }
}
