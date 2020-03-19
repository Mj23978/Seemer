// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListModel> _$listModelSerializer = new _$ListModelSerializer();

class _$ListModelSerializer implements StructuredSerializer<ListModel> {
  @override
  final Iterable<Type> types = const [ListModel, _$ListModel];
  @override
  final String wireName = 'ListModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ListModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.totalResults,
          specifiedType: const FullType(int)),
      'public',
      serializers.serialize(object.public, specifiedType: const FullType(bool)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'revenue',
      serializers.serialize(object.revenue,
          specifiedType: const FullType(String)),
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BaseModel)])),
      'iso_639_1',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'total_pages',
      serializers.serialize(object.totalPages,
          specifiedType: const FullType(int)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'created_by',
      serializers.serialize(object.createdBy,
          specifiedType: const FullType(CreatedByModel)),
      'iso_3166_1',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'average_rating',
      serializers.serialize(object.averageRating,
          specifiedType: const FullType(double)),
      'runtime',
      serializers.serialize(object.runtime, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    if (object.poster != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.poster,
            specifiedType: const FullType(String)));
    }
    if (object.backdrop != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdrop,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ListModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'poster_path':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'backdrop_path':
          result.backdrop = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_results':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'public':
          result.public = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BaseModel)]))
              as BuiltList<dynamic>);
          break;
        case 'iso_639_1':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_by':
          result.createdBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(CreatedByModel)) as CreatedByModel);
          break;
        case 'iso_3166_1':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'average_rating':
          result.averageRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
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

class _$ListModel extends ListModel {
  @override
  final String poster;
  @override
  final int id;
  @override
  final String backdrop;
  @override
  final int totalResults;
  @override
  final bool public;
  @override
  final int page;
  @override
  final String revenue;
  @override
  final BuiltList<BaseModel> results;
  @override
  final String language;
  @override
  final int totalPages;
  @override
  final String description;
  @override
  final CreatedByModel createdBy;
  @override
  final String country;
  @override
  final double averageRating;
  @override
  final int runtime;
  @override
  final String name;

  factory _$ListModel([void Function(ListModelBuilder) updates]) =>
      (new ListModelBuilder()..update(updates)).build();

  _$ListModel._(
      {this.poster,
      this.id,
      this.backdrop,
      this.totalResults,
      this.public,
      this.page,
      this.revenue,
      this.results,
      this.language,
      this.totalPages,
      this.description,
      this.createdBy,
      this.country,
      this.averageRating,
      this.runtime,
      this.name})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ListModel', 'id');
    }
    if (totalResults == null) {
      throw new BuiltValueNullFieldError('ListModel', 'totalResults');
    }
    if (public == null) {
      throw new BuiltValueNullFieldError('ListModel', 'public');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('ListModel', 'page');
    }
    if (revenue == null) {
      throw new BuiltValueNullFieldError('ListModel', 'revenue');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('ListModel', 'results');
    }
    if (language == null) {
      throw new BuiltValueNullFieldError('ListModel', 'language');
    }
    if (totalPages == null) {
      throw new BuiltValueNullFieldError('ListModel', 'totalPages');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('ListModel', 'description');
    }
    if (createdBy == null) {
      throw new BuiltValueNullFieldError('ListModel', 'createdBy');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('ListModel', 'country');
    }
    if (averageRating == null) {
      throw new BuiltValueNullFieldError('ListModel', 'averageRating');
    }
    if (runtime == null) {
      throw new BuiltValueNullFieldError('ListModel', 'runtime');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('ListModel', 'name');
    }
  }

  @override
  ListModel rebuild(void Function(ListModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListModelBuilder toBuilder() => new ListModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListModel &&
        poster == other.poster &&
        id == other.id &&
        backdrop == other.backdrop &&
        totalResults == other.totalResults &&
        public == other.public &&
        page == other.page &&
        revenue == other.revenue &&
        results == other.results &&
        language == other.language &&
        totalPages == other.totalPages &&
        description == other.description &&
        createdBy == other.createdBy &&
        country == other.country &&
        averageRating == other.averageRating &&
        runtime == other.runtime &&
        name == other.name;
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
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    poster
                                                                        .hashCode),
                                                                id.hashCode),
                                                            backdrop.hashCode),
                                                        totalResults.hashCode),
                                                    public.hashCode),
                                                page.hashCode),
                                            revenue.hashCode),
                                        results.hashCode),
                                    language.hashCode),
                                totalPages.hashCode),
                            description.hashCode),
                        createdBy.hashCode),
                    country.hashCode),
                averageRating.hashCode),
            runtime.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListModel')
          ..add('poster', poster)
          ..add('id', id)
          ..add('backdrop', backdrop)
          ..add('totalResults', totalResults)
          ..add('public', public)
          ..add('page', page)
          ..add('revenue', revenue)
          ..add('results', results)
          ..add('language', language)
          ..add('totalPages', totalPages)
          ..add('description', description)
          ..add('createdBy', createdBy)
          ..add('country', country)
          ..add('averageRating', averageRating)
          ..add('runtime', runtime)
          ..add('name', name))
        .toString();
  }
}

class ListModelBuilder implements Builder<ListModel, ListModelBuilder> {
  _$ListModel _$v;

  String _poster;
  String get poster => _$this._poster;
  set poster(String poster) => _$this._poster = poster;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _backdrop;
  String get backdrop => _$this._backdrop;
  set backdrop(String backdrop) => _$this._backdrop = backdrop;

  int _totalResults;
  int get totalResults => _$this._totalResults;
  set totalResults(int totalResults) => _$this._totalResults = totalResults;

  bool _public;
  bool get public => _$this._public;
  set public(bool public) => _$this._public = public;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  String _revenue;
  String get revenue => _$this._revenue;
  set revenue(String revenue) => _$this._revenue = revenue;

  ListBuilder<BaseModel> _results;
  ListBuilder<BaseModel> get results =>
      _$this._results ??= new ListBuilder<BaseModel>();
  set results(ListBuilder<BaseModel> results) => _$this._results = results;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  CreatedByModelBuilder _createdBy;
  CreatedByModelBuilder get createdBy =>
      _$this._createdBy ??= new CreatedByModelBuilder();
  set createdBy(CreatedByModelBuilder createdBy) =>
      _$this._createdBy = createdBy;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  double _averageRating;
  double get averageRating => _$this._averageRating;
  set averageRating(double averageRating) =>
      _$this._averageRating = averageRating;

  int _runtime;
  int get runtime => _$this._runtime;
  set runtime(int runtime) => _$this._runtime = runtime;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListModelBuilder();

  ListModelBuilder get _$this {
    if (_$v != null) {
      _poster = _$v.poster;
      _id = _$v.id;
      _backdrop = _$v.backdrop;
      _totalResults = _$v.totalResults;
      _public = _$v.public;
      _page = _$v.page;
      _revenue = _$v.revenue;
      _results = _$v.results?.toBuilder();
      _language = _$v.language;
      _totalPages = _$v.totalPages;
      _description = _$v.description;
      _createdBy = _$v.createdBy?.toBuilder();
      _country = _$v.country;
      _averageRating = _$v.averageRating;
      _runtime = _$v.runtime;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListModel;
  }

  @override
  void update(void Function(ListModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListModel build() {
    _$ListModel _$result;
    try {
      _$result = _$v ??
          new _$ListModel._(
              poster: poster,
              id: id,
              backdrop: backdrop,
              totalResults: totalResults,
              public: public,
              page: page,
              revenue: revenue,
              results: results.build(),
              language: language,
              totalPages: totalPages,
              description: description,
              createdBy: createdBy.build(),
              country: country,
              averageRating: averageRating,
              runtime: runtime,
              name: name);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();

        _$failedField = 'createdBy';
        createdBy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ListModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
