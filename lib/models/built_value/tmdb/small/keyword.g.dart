// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Keyword> _$keywordSerializer = new _$KeywordSerializer();

class _$KeywordSerializer implements StructuredSerializer<Keyword> {
  @override
  final Iterable<Type> types = const [Keyword, _$Keyword];
  @override
  final String wireName = 'Keyword';

  @override
  Iterable<Object> serialize(Serializers serializers, Keyword object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Keyword deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new KeywordBuilder();

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

class _$Keyword extends Keyword {
  @override
  final int id;
  @override
  final String name;

  factory _$Keyword([void Function(KeywordBuilder) updates]) =>
      (new KeywordBuilder()..update(updates)).build();

  _$Keyword._({this.id, this.name}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Keyword', 'name');
    }
  }

  @override
  Keyword rebuild(void Function(KeywordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeywordBuilder toBuilder() => new KeywordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Keyword && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Keyword')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class KeywordBuilder implements Builder<Keyword, KeywordBuilder> {
  _$Keyword _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  KeywordBuilder();

  KeywordBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Keyword other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Keyword;
  }

  @override
  void update(void Function(KeywordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Keyword build() {
    final _$result = _$v ?? new _$Keyword._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
