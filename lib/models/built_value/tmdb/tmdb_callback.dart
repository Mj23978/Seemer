import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './serializers.dart';

part 'tmdb_callback.g.dart';

abstract class TMDBCallback
    implements Built<TMDBCallback, TMDBCallbackBuilder> {
  @BuiltValueField(wireName: 'status_code')
  String get statusCode;

  @BuiltValueField(wireName: 'status_message')
  String get statusMessage;

  @nullable
  int get id;

  @nullable
  String get success;

  @nullable
  @BuiltValueField(wireName: 'error_message')
  String get errorMessage;

  @nullable
  BuiltList get results;

  @nullable
  @BuiltValueField(wireName: 'media_id')
  String get mediaId;

  TMDBCallback._();

  factory TMDBCallback([updates(TMDBCallbackBuilder b)]) = _$TMDBCallback;

  static Serializer<TMDBCallback> get serializer => _$tMDBCallbackSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(TMDBCallback.serializer, this));
  }

  static TMDBCallback fromJson(String jsonString) {
    return serializers.deserializeWith(
        TMDBCallback.serializer, json.decode(jsonString));
  }
}
