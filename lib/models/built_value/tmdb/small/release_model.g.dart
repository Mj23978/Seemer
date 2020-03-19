// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReleaseModel> _$releaseModelSerializer =
    new _$ReleaseModelSerializer();

class _$ReleaseModelSerializer implements StructuredSerializer<ReleaseModel> {
  @override
  final Iterable<Type> types = const [ReleaseModel, _$ReleaseModel];
  @override
  final String wireName = 'ReleaseModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ReleaseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'certification',
      serializers.serialize(object.certification,
          specifiedType: const FullType(String)),
      'iso_639_1',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'release_date',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(int)),
      'note',
      serializers.serialize(object.note, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ReleaseModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReleaseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'certification':
          result.certification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_639_1':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReleaseModel extends ReleaseModel {
  @override
  final String certification;
  @override
  final String language;
  @override
  final String releaseDate;
  @override
  final int type;
  @override
  final String note;

  factory _$ReleaseModel([void Function(ReleaseModelBuilder) updates]) =>
      (new ReleaseModelBuilder()..update(updates)).build();

  _$ReleaseModel._(
      {this.certification,
      this.language,
      this.releaseDate,
      this.type,
      this.note})
      : super._() {
    if (certification == null) {
      throw new BuiltValueNullFieldError('ReleaseModel', 'certification');
    }
    if (language == null) {
      throw new BuiltValueNullFieldError('ReleaseModel', 'language');
    }
    if (releaseDate == null) {
      throw new BuiltValueNullFieldError('ReleaseModel', 'releaseDate');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('ReleaseModel', 'type');
    }
    if (note == null) {
      throw new BuiltValueNullFieldError('ReleaseModel', 'note');
    }
  }

  @override
  ReleaseModel rebuild(void Function(ReleaseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseModelBuilder toBuilder() => new ReleaseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseModel &&
        certification == other.certification &&
        language == other.language &&
        releaseDate == other.releaseDate &&
        type == other.type &&
        note == other.note;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, certification.hashCode), language.hashCode),
                releaseDate.hashCode),
            type.hashCode),
        note.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReleaseModel')
          ..add('certification', certification)
          ..add('language', language)
          ..add('releaseDate', releaseDate)
          ..add('type', type)
          ..add('note', note))
        .toString();
  }
}

class ReleaseModelBuilder
    implements Builder<ReleaseModel, ReleaseModelBuilder> {
  _$ReleaseModel _$v;

  String _certification;
  String get certification => _$this._certification;
  set certification(String certification) =>
      _$this._certification = certification;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  String _note;
  String get note => _$this._note;
  set note(String note) => _$this._note = note;

  ReleaseModelBuilder();

  ReleaseModelBuilder get _$this {
    if (_$v != null) {
      _certification = _$v.certification;
      _language = _$v.language;
      _releaseDate = _$v.releaseDate;
      _type = _$v.type;
      _note = _$v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReleaseModel;
  }

  @override
  void update(void Function(ReleaseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReleaseModel build() {
    final _$result = _$v ??
        new _$ReleaseModel._(
            certification: certification,
            language: language,
            releaseDate: releaseDate,
            type: type,
            note: note);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
