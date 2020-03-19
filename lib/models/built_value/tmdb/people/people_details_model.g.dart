// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_details_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PeopleDetailsModel> _$peopleDetailsModelSerializer =
    new _$PeopleDetailsModelSerializer();

class _$PeopleDetailsModelSerializer
    implements StructuredSerializer<PeopleDetailsModel> {
  @override
  final Iterable<Type> types = const [PeopleDetailsModel, _$PeopleDetailsModel];
  @override
  final String wireName = 'PeopleDetailsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, PeopleDetailsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'known_for_department',
      serializers.serialize(object.knownForDepartment,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'also_know_as',
      serializers.serialize(object.alsoKnowAs,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'gender',
      serializers.serialize(object.gender, specifiedType: const FullType(int)),
      'biography',
      serializers.serialize(object.biography,
          specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'imdb_id',
      serializers.serialize(object.imdbId,
          specifiedType: const FullType(String)),
    ];
    if (object.birthday != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(object.birthday,
            specifiedType: const FullType(String)));
    }
    if (object.deathday != null) {
      result
        ..add('deathday')
        ..add(serializers.serialize(object.deathday,
            specifiedType: const FullType(String)));
    }
    if (object.placeOfBirth != null) {
      result
        ..add('place_of_birth')
        ..add(serializers.serialize(object.placeOfBirth,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('profile_path')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    if (object.homepage != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(object.homepage,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PeopleDetailsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PeopleDetailsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'known_for_department':
          result.knownForDepartment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deathday':
          result.deathday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'also_know_as':
          result.alsoKnowAs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'biography':
          result.biography = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'place_of_birth':
          result.placeOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_path':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'imdb_id':
          result.imdbId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PeopleDetailsModel extends PeopleDetailsModel {
  @override
  final String birthday;
  @override
  final String knownForDepartment;
  @override
  final String deathday;
  @override
  final int id;
  @override
  final String name;
  @override
  final BuiltList<String> alsoKnowAs;
  @override
  final int gender;
  @override
  final String biography;
  @override
  final double popularity;
  @override
  final String placeOfBirth;
  @override
  final String image;
  @override
  final bool adult;
  @override
  final String imdbId;
  @override
  final String homepage;

  factory _$PeopleDetailsModel(
          [void Function(PeopleDetailsModelBuilder) updates]) =>
      (new PeopleDetailsModelBuilder()..update(updates)).build();

  _$PeopleDetailsModel._(
      {this.birthday,
      this.knownForDepartment,
      this.deathday,
      this.id,
      this.name,
      this.alsoKnowAs,
      this.gender,
      this.biography,
      this.popularity,
      this.placeOfBirth,
      this.image,
      this.adult,
      this.imdbId,
      this.homepage})
      : super._() {
    if (knownForDepartment == null) {
      throw new BuiltValueNullFieldError(
          'PeopleDetailsModel', 'knownForDepartment');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('PeopleDetailsModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('PeopleDetailsModel', 'name');
    }
    if (alsoKnowAs == null) {
      throw new BuiltValueNullFieldError('PeopleDetailsModel', 'alsoKnowAs');
    }
    if (gender == null) {
      throw new BuiltValueNullFieldError('PeopleDetailsModel', 'gender');
    }
    if (biography == null) {
      throw new BuiltValueNullFieldError('PeopleDetailsModel', 'biography');
    }
    if (popularity == null) {
      throw new BuiltValueNullFieldError('PeopleDetailsModel', 'popularity');
    }
    if (adult == null) {
      throw new BuiltValueNullFieldError('PeopleDetailsModel', 'adult');
    }
    if (imdbId == null) {
      throw new BuiltValueNullFieldError('PeopleDetailsModel', 'imdbId');
    }
  }

  @override
  PeopleDetailsModel rebuild(
          void Function(PeopleDetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeopleDetailsModelBuilder toBuilder() =>
      new PeopleDetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeopleDetailsModel &&
        birthday == other.birthday &&
        knownForDepartment == other.knownForDepartment &&
        deathday == other.deathday &&
        id == other.id &&
        name == other.name &&
        alsoKnowAs == other.alsoKnowAs &&
        gender == other.gender &&
        biography == other.biography &&
        popularity == other.popularity &&
        placeOfBirth == other.placeOfBirth &&
        image == other.image &&
        adult == other.adult &&
        imdbId == other.imdbId &&
        homepage == other.homepage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(0,
                                                            birthday.hashCode),
                                                        knownForDepartment
                                                            .hashCode),
                                                    deathday.hashCode),
                                                id.hashCode),
                                            name.hashCode),
                                        alsoKnowAs.hashCode),
                                    gender.hashCode),
                                biography.hashCode),
                            popularity.hashCode),
                        placeOfBirth.hashCode),
                    image.hashCode),
                adult.hashCode),
            imdbId.hashCode),
        homepage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PeopleDetailsModel')
          ..add('birthday', birthday)
          ..add('knownForDepartment', knownForDepartment)
          ..add('deathday', deathday)
          ..add('id', id)
          ..add('name', name)
          ..add('alsoKnowAs', alsoKnowAs)
          ..add('gender', gender)
          ..add('biography', biography)
          ..add('popularity', popularity)
          ..add('placeOfBirth', placeOfBirth)
          ..add('image', image)
          ..add('adult', adult)
          ..add('imdbId', imdbId)
          ..add('homepage', homepage))
        .toString();
  }
}

class PeopleDetailsModelBuilder
    implements Builder<PeopleDetailsModel, PeopleDetailsModelBuilder> {
  _$PeopleDetailsModel _$v;

  String _birthday;
  String get birthday => _$this._birthday;
  set birthday(String birthday) => _$this._birthday = birthday;

  String _knownForDepartment;
  String get knownForDepartment => _$this._knownForDepartment;
  set knownForDepartment(String knownForDepartment) =>
      _$this._knownForDepartment = knownForDepartment;

  String _deathday;
  String get deathday => _$this._deathday;
  set deathday(String deathday) => _$this._deathday = deathday;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<String> _alsoKnowAs;
  ListBuilder<String> get alsoKnowAs =>
      _$this._alsoKnowAs ??= new ListBuilder<String>();
  set alsoKnowAs(ListBuilder<String> alsoKnowAs) =>
      _$this._alsoKnowAs = alsoKnowAs;

  int _gender;
  int get gender => _$this._gender;
  set gender(int gender) => _$this._gender = gender;

  String _biography;
  String get biography => _$this._biography;
  set biography(String biography) => _$this._biography = biography;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _placeOfBirth;
  String get placeOfBirth => _$this._placeOfBirth;
  set placeOfBirth(String placeOfBirth) => _$this._placeOfBirth = placeOfBirth;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  bool _adult;
  bool get adult => _$this._adult;
  set adult(bool adult) => _$this._adult = adult;

  String _imdbId;
  String get imdbId => _$this._imdbId;
  set imdbId(String imdbId) => _$this._imdbId = imdbId;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  PeopleDetailsModelBuilder();

  PeopleDetailsModelBuilder get _$this {
    if (_$v != null) {
      _birthday = _$v.birthday;
      _knownForDepartment = _$v.knownForDepartment;
      _deathday = _$v.deathday;
      _id = _$v.id;
      _name = _$v.name;
      _alsoKnowAs = _$v.alsoKnowAs?.toBuilder();
      _gender = _$v.gender;
      _biography = _$v.biography;
      _popularity = _$v.popularity;
      _placeOfBirth = _$v.placeOfBirth;
      _image = _$v.image;
      _adult = _$v.adult;
      _imdbId = _$v.imdbId;
      _homepage = _$v.homepage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeopleDetailsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PeopleDetailsModel;
  }

  @override
  void update(void Function(PeopleDetailsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PeopleDetailsModel build() {
    _$PeopleDetailsModel _$result;
    try {
      _$result = _$v ??
          new _$PeopleDetailsModel._(
              birthday: birthday,
              knownForDepartment: knownForDepartment,
              deathday: deathday,
              id: id,
              name: name,
              alsoKnowAs: alsoKnowAs.build(),
              gender: gender,
              biography: biography,
              popularity: popularity,
              placeOfBirth: placeOfBirth,
              image: image,
              adult: adult,
              imdbId: imdbId,
              homepage: homepage);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'alsoKnowAs';
        alsoKnowAs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PeopleDetailsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
