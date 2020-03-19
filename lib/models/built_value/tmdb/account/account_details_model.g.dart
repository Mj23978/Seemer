// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_details_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccountDetailsModel> _$accountDetailsModelSerializer =
    new _$AccountDetailsModelSerializer();

class _$AccountDetailsModelSerializer
    implements StructuredSerializer<AccountDetailsModel> {
  @override
  final Iterable<Type> types = const [
    AccountDetailsModel,
    _$AccountDetailsModel
  ];
  @override
  final String wireName = 'AccountDetailsModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AccountDetailsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'iso_639_1',
      serializers.serialize(object.countryLanguage,
          specifiedType: const FullType(String)),
      'iso_3166_1',
      serializers.serialize(object.countryCode,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'include_adult',
      serializers.serialize(object.includeAdult,
          specifiedType: const FullType(bool)),
    ];
    if (object.avatar != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(object.avatar,
            specifiedType: const FullType(AvatarModel)));
    }
    return result;
  }

  @override
  AccountDetailsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountDetailsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
              specifiedType: const FullType(AvatarModel)) as AvatarModel);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'iso_639_1':
          result.countryLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_3166_1':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'include_adult':
          result.includeAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AccountDetailsModel extends AccountDetailsModel {
  @override
  final AvatarModel avatar;
  @override
  final int id;
  @override
  final String countryLanguage;
  @override
  final String countryCode;
  @override
  final String name;
  @override
  final String username;
  @override
  final bool includeAdult;

  factory _$AccountDetailsModel(
          [void Function(AccountDetailsModelBuilder) updates]) =>
      (new AccountDetailsModelBuilder()..update(updates)).build();

  _$AccountDetailsModel._(
      {this.avatar,
      this.id,
      this.countryLanguage,
      this.countryCode,
      this.name,
      this.username,
      this.includeAdult})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('AccountDetailsModel', 'id');
    }
    if (countryLanguage == null) {
      throw new BuiltValueNullFieldError(
          'AccountDetailsModel', 'countryLanguage');
    }
    if (countryCode == null) {
      throw new BuiltValueNullFieldError('AccountDetailsModel', 'countryCode');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('AccountDetailsModel', 'name');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('AccountDetailsModel', 'username');
    }
    if (includeAdult == null) {
      throw new BuiltValueNullFieldError('AccountDetailsModel', 'includeAdult');
    }
  }

  @override
  AccountDetailsModel rebuild(
          void Function(AccountDetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountDetailsModelBuilder toBuilder() =>
      new AccountDetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountDetailsModel &&
        avatar == other.avatar &&
        id == other.id &&
        countryLanguage == other.countryLanguage &&
        countryCode == other.countryCode &&
        name == other.name &&
        username == other.username &&
        includeAdult == other.includeAdult;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, avatar.hashCode), id.hashCode),
                        countryLanguage.hashCode),
                    countryCode.hashCode),
                name.hashCode),
            username.hashCode),
        includeAdult.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountDetailsModel')
          ..add('avatar', avatar)
          ..add('id', id)
          ..add('countryLanguage', countryLanguage)
          ..add('countryCode', countryCode)
          ..add('name', name)
          ..add('username', username)
          ..add('includeAdult', includeAdult))
        .toString();
  }
}

class AccountDetailsModelBuilder
    implements Builder<AccountDetailsModel, AccountDetailsModelBuilder> {
  _$AccountDetailsModel _$v;

  AvatarModelBuilder _avatar;
  AvatarModelBuilder get avatar => _$this._avatar ??= new AvatarModelBuilder();
  set avatar(AvatarModelBuilder avatar) => _$this._avatar = avatar;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _countryLanguage;
  String get countryLanguage => _$this._countryLanguage;
  set countryLanguage(String countryLanguage) =>
      _$this._countryLanguage = countryLanguage;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  bool _includeAdult;
  bool get includeAdult => _$this._includeAdult;
  set includeAdult(bool includeAdult) => _$this._includeAdult = includeAdult;

  AccountDetailsModelBuilder();

  AccountDetailsModelBuilder get _$this {
    if (_$v != null) {
      _avatar = _$v.avatar?.toBuilder();
      _id = _$v.id;
      _countryLanguage = _$v.countryLanguage;
      _countryCode = _$v.countryCode;
      _name = _$v.name;
      _username = _$v.username;
      _includeAdult = _$v.includeAdult;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountDetailsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AccountDetailsModel;
  }

  @override
  void update(void Function(AccountDetailsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountDetailsModel build() {
    _$AccountDetailsModel _$result;
    try {
      _$result = _$v ??
          new _$AccountDetailsModel._(
              avatar: _avatar?.build(),
              id: id,
              countryLanguage: countryLanguage,
              countryCode: countryCode,
              name: name,
              username: username,
              includeAdult: includeAdult);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AccountDetailsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
