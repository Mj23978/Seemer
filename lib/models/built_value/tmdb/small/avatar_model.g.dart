// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AvatarModel> _$avatarModelSerializer = new _$AvatarModelSerializer();
Serializer<Gravatar> _$gravatarSerializer = new _$GravatarSerializer();

class _$AvatarModelSerializer implements StructuredSerializer<AvatarModel> {
  @override
  final Iterable<Type> types = const [AvatarModel, _$AvatarModel];
  @override
  final String wireName = 'AvatarModel';

  @override
  Iterable<Object> serialize(Serializers serializers, AvatarModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.gravatar != null) {
      result
        ..add('gravatar')
        ..add(serializers.serialize(object.gravatar,
            specifiedType: const FullType(Gravatar)));
    }
    return result;
  }

  @override
  AvatarModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AvatarModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'gravatar':
          result.gravatar.replace(serializers.deserialize(value,
              specifiedType: const FullType(Gravatar)) as Gravatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GravatarSerializer implements StructuredSerializer<Gravatar> {
  @override
  final Iterable<Type> types = const [Gravatar, _$Gravatar];
  @override
  final String wireName = 'Gravatar';

  @override
  Iterable<Object> serialize(Serializers serializers, Gravatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'hash',
      serializers.serialize(object.hash, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Gravatar deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GravatarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'hash':
          result.hash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AvatarModel extends AvatarModel {
  @override
  final Gravatar gravatar;

  factory _$AvatarModel([void Function(AvatarModelBuilder) updates]) =>
      (new AvatarModelBuilder()..update(updates)).build();

  _$AvatarModel._({this.gravatar}) : super._();

  @override
  AvatarModel rebuild(void Function(AvatarModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvatarModelBuilder toBuilder() => new AvatarModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvatarModel && gravatar == other.gravatar;
  }

  @override
  int get hashCode {
    return $jf($jc(0, gravatar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AvatarModel')
          ..add('gravatar', gravatar))
        .toString();
  }
}

class AvatarModelBuilder implements Builder<AvatarModel, AvatarModelBuilder> {
  _$AvatarModel _$v;

  GravatarBuilder _gravatar;
  GravatarBuilder get gravatar => _$this._gravatar ??= new GravatarBuilder();
  set gravatar(GravatarBuilder gravatar) => _$this._gravatar = gravatar;

  AvatarModelBuilder();

  AvatarModelBuilder get _$this {
    if (_$v != null) {
      _gravatar = _$v.gravatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvatarModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AvatarModel;
  }

  @override
  void update(void Function(AvatarModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AvatarModel build() {
    _$AvatarModel _$result;
    try {
      _$result = _$v ?? new _$AvatarModel._(gravatar: _gravatar?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'gravatar';
        _gravatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AvatarModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Gravatar extends Gravatar {
  @override
  final String hash;

  factory _$Gravatar([void Function(GravatarBuilder) updates]) =>
      (new GravatarBuilder()..update(updates)).build();

  _$Gravatar._({this.hash}) : super._() {
    if (hash == null) {
      throw new BuiltValueNullFieldError('Gravatar', 'hash');
    }
  }

  @override
  Gravatar rebuild(void Function(GravatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GravatarBuilder toBuilder() => new GravatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gravatar && hash == other.hash;
  }

  @override
  int get hashCode {
    return $jf($jc(0, hash.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Gravatar')..add('hash', hash))
        .toString();
  }
}

class GravatarBuilder implements Builder<Gravatar, GravatarBuilder> {
  _$Gravatar _$v;

  String _hash;
  String get hash => _$this._hash;
  set hash(String hash) => _$this._hash = hash;

  GravatarBuilder();

  GravatarBuilder get _$this {
    if (_$v != null) {
      _hash = _$v.hash;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Gravatar other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Gravatar;
  }

  @override
  void update(void Function(GravatarBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Gravatar build() {
    final _$result = _$v ?? new _$Gravatar._(hash: hash);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
