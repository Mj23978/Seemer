// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'networks_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NetworksModel> _$networksModelSerializer =
    new _$NetworksModelSerializer();

class _$NetworksModelSerializer implements StructuredSerializer<NetworksModel> {
  @override
  final Iterable<Type> types = const [NetworksModel, _$NetworksModel];
  @override
  final String wireName = 'NetworksModel';

  @override
  Iterable<Object> serialize(Serializers serializers, NetworksModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'origin_country',
      serializers.serialize(object.originCountry,
          specifiedType: const FullType(String)),
    ];
    if (object.logo != null) {
      result
        ..add('logo_path')
        ..add(serializers.serialize(object.logo,
            specifiedType: const FullType(String)));
    }
    if (object.profilePath != null) {
      result
        ..add('profile_path')
        ..add(serializers.serialize(object.profilePath,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NetworksModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NetworksModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'logo_path':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'origin_country':
          result.originCountry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_path':
          result.profilePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NetworksModel extends NetworksModel {
  @override
  final int id;
  @override
  final String logo;
  @override
  final String name;
  @override
  final String originCountry;
  @override
  final String profilePath;

  factory _$NetworksModel([void Function(NetworksModelBuilder) updates]) =>
      (new NetworksModelBuilder()..update(updates)).build();

  _$NetworksModel._(
      {this.id, this.logo, this.name, this.originCountry, this.profilePath})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('NetworksModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('NetworksModel', 'name');
    }
    if (originCountry == null) {
      throw new BuiltValueNullFieldError('NetworksModel', 'originCountry');
    }
  }

  @override
  NetworksModel rebuild(void Function(NetworksModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworksModelBuilder toBuilder() => new NetworksModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworksModel &&
        id == other.id &&
        logo == other.logo &&
        name == other.name &&
        originCountry == other.originCountry &&
        profilePath == other.profilePath;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), logo.hashCode), name.hashCode),
            originCountry.hashCode),
        profilePath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NetworksModel')
          ..add('id', id)
          ..add('logo', logo)
          ..add('name', name)
          ..add('originCountry', originCountry)
          ..add('profilePath', profilePath))
        .toString();
  }
}

class NetworksModelBuilder
    implements Builder<NetworksModel, NetworksModelBuilder> {
  _$NetworksModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _logo;
  String get logo => _$this._logo;
  set logo(String logo) => _$this._logo = logo;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _originCountry;
  String get originCountry => _$this._originCountry;
  set originCountry(String originCountry) =>
      _$this._originCountry = originCountry;

  String _profilePath;
  String get profilePath => _$this._profilePath;
  set profilePath(String profilePath) => _$this._profilePath = profilePath;

  NetworksModelBuilder();

  NetworksModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _logo = _$v.logo;
      _name = _$v.name;
      _originCountry = _$v.originCountry;
      _profilePath = _$v.profilePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworksModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NetworksModel;
  }

  @override
  void update(void Function(NetworksModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NetworksModel build() {
    final _$result = _$v ??
        new _$NetworksModel._(
            id: id,
            logo: logo,
            name: name,
            originCountry: originCountry,
            profilePath: profilePath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
