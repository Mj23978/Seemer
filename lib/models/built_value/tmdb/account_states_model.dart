import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './small/rated_model.dart';
import './serializers.dart';

part 'account_states_model.g.dart';

abstract class AccountStatesModel
    implements Built<AccountStatesModel, AccountStatesModelBuilder> {
  int get id;

  bool get favorite;

  @nullable
  RatedModel get rated;

  bool get watchlist;

  AccountStatesModel._();

  factory AccountStatesModel([updates(AccountStatesModelBuilder b)]) =
      _$AccountStatesModel;

  static Serializer<AccountStatesModel> get serializer =>
      _$accountStatesModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(AccountStatesModel.serializer, this));
  }

  static AccountStatesModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        AccountStatesModel.serializer, json.decode(jsonString));
  }
}
