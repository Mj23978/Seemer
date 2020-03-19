// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keywords_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<KeywordsModel> _$keywordsModelSerializer =
    new _$KeywordsModelSerializer();
Serializer<Keywords> _$keywordsSerializer = new _$KeywordsSerializer();

class _$KeywordsModelSerializer implements StructuredSerializer<KeywordsModel> {
  @override
  final Iterable<Type> types = const [KeywordsModel, _$KeywordsModel];
  @override
  final String wireName = 'KeywordsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, KeywordsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'keywords',
      serializers.serialize(object.keywords,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Keywords)])),
    ];

    return result;
  }

  @override
  KeywordsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new KeywordsModelBuilder();

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
        case 'keywords':
          result.keywords.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Keywords)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$KeywordsSerializer implements StructuredSerializer<Keywords> {
  @override
  final Iterable<Type> types = const [Keywords, _$Keywords];
  @override
  final String wireName = 'Keywords';

  @override
  Iterable<Object> serialize(Serializers serializers, Keywords object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Keywords deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new KeywordsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$KeywordsModel extends KeywordsModel {
  @override
  final int id;
  @override
  final BuiltList<Keywords> keywords;

  factory _$KeywordsModel([void Function(KeywordsModelBuilder) updates]) =>
      (new KeywordsModelBuilder()..update(updates)).build();

  _$KeywordsModel._({this.id, this.keywords}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('KeywordsModel', 'id');
    }
    if (keywords == null) {
      throw new BuiltValueNullFieldError('KeywordsModel', 'keywords');
    }
  }

  @override
  KeywordsModel rebuild(void Function(KeywordsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeywordsModelBuilder toBuilder() => new KeywordsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeywordsModel &&
        id == other.id &&
        keywords == other.keywords;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), keywords.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('KeywordsModel')
          ..add('id', id)
          ..add('keywords', keywords))
        .toString();
  }
}

class KeywordsModelBuilder
    implements Builder<KeywordsModel, KeywordsModelBuilder> {
  _$KeywordsModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<Keywords> _keywords;
  ListBuilder<Keywords> get keywords =>
      _$this._keywords ??= new ListBuilder<Keywords>();
  set keywords(ListBuilder<Keywords> keywords) => _$this._keywords = keywords;

  KeywordsModelBuilder();

  KeywordsModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _keywords = _$v.keywords?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeywordsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$KeywordsModel;
  }

  @override
  void update(void Function(KeywordsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$KeywordsModel build() {
    _$KeywordsModel _$result;
    try {
      _$result =
          _$v ?? new _$KeywordsModel._(id: id, keywords: keywords.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'keywords';
        keywords.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'KeywordsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Keywords extends Keywords {
  @override
  final int id;
  @override
  final String name;

  factory _$Keywords([void Function(KeywordsBuilder) updates]) =>
      (new KeywordsBuilder()..update(updates)).build();

  _$Keywords._({this.id, this.name}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Keywords', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Keywords', 'name');
    }
  }

  @override
  Keywords rebuild(void Function(KeywordsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeywordsBuilder toBuilder() => new KeywordsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Keywords && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Keywords')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class KeywordsBuilder implements Builder<Keywords, KeywordsBuilder> {
  _$Keywords _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  KeywordsBuilder();

  KeywordsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Keywords other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Keywords;
  }

  @override
  void update(void Function(KeywordsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Keywords build() {
    final _$result = _$v ?? new _$Keywords._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
