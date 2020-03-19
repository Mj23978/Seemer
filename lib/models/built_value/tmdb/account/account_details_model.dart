import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../small/avatar_model.dart';

import '../serializers.dart';

part 'account_details_model.g.dart';

abstract class AccountDetailsModel
    implements Built<AccountDetailsModel, AccountDetailsModelBuilder> {
  @nullable
  AvatarModel get avatar;

  int get id;

  @BuiltValueField(wireName: 'iso_639_1')
  String get countryLanguage;

  @BuiltValueField(wireName: 'iso_3166_1')
  String get countryCode;

  String get name;

  String get username;

  @BuiltValueField(wireName: 'include_adult')
  bool get includeAdult;

  AccountDetailsModel._();

  factory AccountDetailsModel([updates(AccountDetailsModelBuilder b)]) =
      _$AccountDetailsModel;

  static Serializer<AccountDetailsModel> get serializer =>
      _$accountDetailsModelSerializer;
  String toJson() {
    return json.encode(
        serializers.serializeWith(AccountDetailsModel.serializer, this));
  }

  static AccountDetailsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        AccountDetailsModel.serializer, json.decode(jsonString));
  }
}
