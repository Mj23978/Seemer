// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoken_languages_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SpokenLanguagesModel> _$spokenLanguagesModelSerializer =
    new _$SpokenLanguagesModelSerializer();

class _$SpokenLanguagesModelSerializer
    implements StructuredSerializer<SpokenLanguagesModel> {
  @override
  final Iterable<Type> types = const [
    SpokenLanguagesModel,
    _$SpokenLanguagesModel
  ];
  @override
  final String wireName = 'SpokenLanguagesModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SpokenLanguagesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'language',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'iso_3166_1',
      serializers.serialize(object.countryCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SpokenLanguagesModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpokenLanguagesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_3166_1':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SpokenLanguagesModel extends SpokenLanguagesModel {
  @override
  final String language;
  @override
  final String countryCode;

  factory _$SpokenLanguagesModel(
          [void Function(SpokenLanguagesModelBuilder) updates]) =>
      (new SpokenLanguagesModelBuilder()..update(updates)).build();

  _$SpokenLanguagesModel._({this.language, this.countryCode}) : super._() {
    if (language == null) {
      throw new BuiltValueNullFieldError('SpokenLanguagesModel', 'language');
    }
    if (countryCode == null) {
      throw new BuiltValueNullFieldError('SpokenLanguagesModel', 'countryCode');
    }
  }

  @override
  SpokenLanguagesModel rebuild(
          void Function(SpokenLanguagesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpokenLanguagesModelBuilder toBuilder() =>
      new SpokenLanguagesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpokenLanguagesModel &&
        language == other.language &&
        countryCode == other.countryCode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, language.hashCode), countryCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpokenLanguagesModel')
          ..add('language', language)
          ..add('countryCode', countryCode))
        .toString();
  }
}

class SpokenLanguagesModelBuilder
    implements Builder<SpokenLanguagesModel, SpokenLanguagesModelBuilder> {
  _$SpokenLanguagesModel _$v;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  SpokenLanguagesModelBuilder();

  SpokenLanguagesModelBuilder get _$this {
    if (_$v != null) {
      _language = _$v.language;
      _countryCode = _$v.countryCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpokenLanguagesModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SpokenLanguagesModel;
  }

  @override
  void update(void Function(SpokenLanguagesModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpokenLanguagesModel build() {
    final _$result = _$v ??
        new _$SpokenLanguagesModel._(
            language: language, countryCode: countryCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
