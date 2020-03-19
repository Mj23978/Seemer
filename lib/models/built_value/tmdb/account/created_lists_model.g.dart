// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_lists_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreatedListsModel> _$createdListsModelSerializer =
    new _$CreatedListsModelSerializer();
Serializer<CreatedListsResults> _$createdListsResultsSerializer =
    new _$CreatedListsResultsSerializer();

class _$CreatedListsModelSerializer
    implements StructuredSerializer<CreatedListsModel> {
  @override
  final Iterable<Type> types = const [CreatedListsModel, _$CreatedListsModel];
  @override
  final String wireName = 'CreatedListsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CreatedListsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType: const FullType(
              BuiltList, const [const FullType(CreatedListsModel)])),
    ];
    if (object.page != null) {
      result
        ..add('page')
        ..add(serializers.serialize(object.page,
            specifiedType: const FullType(int)));
    }
    if (object.totalResults != null) {
      result
        ..add('total_results')
        ..add(serializers.serialize(object.totalResults,
            specifiedType: const FullType(int)));
    }
    if (object.totalPages != null) {
      result
        ..add('total_pages')
        ..add(serializers.serialize(object.totalPages,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CreatedListsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatedListsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CreatedListsModel)]))
              as BuiltList<dynamic>);
          break;
        case 'total_results':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CreatedListsResultsSerializer
    implements StructuredSerializer<CreatedListsResults> {
  @override
  final Iterable<Type> types = const [
    CreatedListsResults,
    _$CreatedListsResults
  ];
  @override
  final String wireName = 'CreatedListsResults';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CreatedListsResults object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'iso_639_1',
      serializers.serialize(object.countryLanguage,
          specifiedType: const FullType(String)),
      'featured',
      serializers.serialize(object.featured,
          specifiedType: const FullType(int)),
      'revenue',
      serializers.serialize(object.revenue,
          specifiedType: const FullType(String)),
      'public',
      serializers.serialize(object.public, specifiedType: const FullType(bool)),
      'updated_at',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(String)),
      'runtime',
      serializers.serialize(object.runtime, specifiedType: const FullType(int)),
      'average_rating',
      serializers.serialize(object.averageRating,
          specifiedType: const FullType(double)),
      'iso_3166_1',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(int)),
      'number_of_items',
      serializers.serialize(object.numberOfItems,
          specifiedType: const FullType(int)),
    ];
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    if (object.sortBy != null) {
      result
        ..add('sort_by')
        ..add(serializers.serialize(object.sortBy,
            specifiedType: const FullType(int)));
    }
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CreatedListsResults deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatedListsResultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_639_1':
          result.countryLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'featured':
          result.featured = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'public':
          result.public = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sort_by':
          result.sortBy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'average_rating':
          result.averageRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'iso_3166_1':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'number_of_items':
          result.numberOfItems = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CreatedListsModel extends CreatedListsModel {
  @override
  final int page;
  @override
  final BuiltList<CreatedListsModel> results;
  @override
  final int totalResults;
  @override
  final int totalPages;

  factory _$CreatedListsModel(
          [void Function(CreatedListsModelBuilder) updates]) =>
      (new CreatedListsModelBuilder()..update(updates)).build();

  _$CreatedListsModel._(
      {this.page, this.results, this.totalResults, this.totalPages})
      : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('CreatedListsModel', 'results');
    }
  }

  @override
  CreatedListsModel rebuild(void Function(CreatedListsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatedListsModelBuilder toBuilder() =>
      new CreatedListsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatedListsModel &&
        page == other.page &&
        results == other.results &&
        totalResults == other.totalResults &&
        totalPages == other.totalPages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, page.hashCode), results.hashCode),
            totalResults.hashCode),
        totalPages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreatedListsModel')
          ..add('page', page)
          ..add('results', results)
          ..add('totalResults', totalResults)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class CreatedListsModelBuilder
    implements Builder<CreatedListsModel, CreatedListsModelBuilder> {
  _$CreatedListsModel _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  ListBuilder<CreatedListsModel> _results;
  ListBuilder<CreatedListsModel> get results =>
      _$this._results ??= new ListBuilder<CreatedListsModel>();
  set results(ListBuilder<CreatedListsModel> results) =>
      _$this._results = results;

  int _totalResults;
  int get totalResults => _$this._totalResults;
  set totalResults(int totalResults) => _$this._totalResults = totalResults;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  CreatedListsModelBuilder();

  CreatedListsModelBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _results = _$v.results?.toBuilder();
      _totalResults = _$v.totalResults;
      _totalPages = _$v.totalPages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatedListsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreatedListsModel;
  }

  @override
  void update(void Function(CreatedListsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatedListsModel build() {
    _$CreatedListsModel _$result;
    try {
      _$result = _$v ??
          new _$CreatedListsModel._(
              page: page,
              results: results.build(),
              totalResults: totalResults,
              totalPages: totalPages);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreatedListsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreatedListsResults extends CreatedListsResults {
  @override
  final String posterPath;
  @override
  final String name;
  @override
  final int id;
  @override
  final String description;
  @override
  final String countryLanguage;
  @override
  final int featured;
  @override
  final String revenue;
  @override
  final bool public;
  @override
  final String updatedAt;
  @override
  final String createdAt;
  @override
  final int sortBy;
  @override
  final String backdropPath;
  @override
  final int runtime;
  @override
  final double averageRating;
  @override
  final String country;
  @override
  final int adult;
  @override
  final int numberOfItems;

  factory _$CreatedListsResults(
          [void Function(CreatedListsResultsBuilder) updates]) =>
      (new CreatedListsResultsBuilder()..update(updates)).build();

  _$CreatedListsResults._(
      {this.posterPath,
      this.name,
      this.id,
      this.description,
      this.countryLanguage,
      this.featured,
      this.revenue,
      this.public,
      this.updatedAt,
      this.createdAt,
      this.sortBy,
      this.backdropPath,
      this.runtime,
      this.averageRating,
      this.country,
      this.adult,
      this.numberOfItems})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('CreatedListsResults', 'name');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('CreatedListsResults', 'id');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('CreatedListsResults', 'description');
    }
    if (countryLanguage == null) {
      throw new BuiltValueNullFieldError(
          'CreatedListsResults', 'countryLanguage');
    }
    if (featured == null) {
      throw new BuiltValueNullFieldError('CreatedListsResults', 'featured');
    }
    if (revenue == null) {
      throw new BuiltValueNullFieldError('CreatedListsResults', 'revenue');
    }
    if (public == null) {
      throw new BuiltValueNullFieldError('CreatedListsResults', 'public');
    }
    if (updatedAt == null) {
      throw new BuiltValueNullFieldError('CreatedListsResults', 'updatedAt');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('CreatedListsResults', 'createdAt');
    }
    if (runtime == null) {
      throw new BuiltValueNullFieldError('CreatedListsResults', 'runtime');
    }
    if (averageRating == null) {
      throw new BuiltValueNullFieldError(
          'CreatedListsResults', 'averageRating');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('CreatedListsResults', 'country');
    }
    if (adult == null) {
      throw new BuiltValueNullFieldError('CreatedListsResults', 'adult');
    }
    if (numberOfItems == null) {
      throw new BuiltValueNullFieldError(
          'CreatedListsResults', 'numberOfItems');
    }
  }

  @override
  CreatedListsResults rebuild(
          void Function(CreatedListsResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatedListsResultsBuilder toBuilder() =>
      new CreatedListsResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatedListsResults &&
        posterPath == other.posterPath &&
        name == other.name &&
        id == other.id &&
        description == other.description &&
        countryLanguage == other.countryLanguage &&
        featured == other.featured &&
        revenue == other.revenue &&
        public == other.public &&
        updatedAt == other.updatedAt &&
        createdAt == other.createdAt &&
        sortBy == other.sortBy &&
        backdropPath == other.backdropPath &&
        runtime == other.runtime &&
        averageRating == other.averageRating &&
        country == other.country &&
        adult == other.adult &&
        numberOfItems == other.numberOfItems;
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
                                                                    $jc(
                                                                        0,
                                                                        posterPath
                                                                            .hashCode),
                                                                    name
                                                                        .hashCode),
                                                                id.hashCode),
                                                            description
                                                                .hashCode),
                                                        countryLanguage
                                                            .hashCode),
                                                    featured.hashCode),
                                                revenue.hashCode),
                                            public.hashCode),
                                        updatedAt.hashCode),
                                    createdAt.hashCode),
                                sortBy.hashCode),
                            backdropPath.hashCode),
                        runtime.hashCode),
                    averageRating.hashCode),
                country.hashCode),
            adult.hashCode),
        numberOfItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreatedListsResults')
          ..add('posterPath', posterPath)
          ..add('name', name)
          ..add('id', id)
          ..add('description', description)
          ..add('countryLanguage', countryLanguage)
          ..add('featured', featured)
          ..add('revenue', revenue)
          ..add('public', public)
          ..add('updatedAt', updatedAt)
          ..add('createdAt', createdAt)
          ..add('sortBy', sortBy)
          ..add('backdropPath', backdropPath)
          ..add('runtime', runtime)
          ..add('averageRating', averageRating)
          ..add('country', country)
          ..add('adult', adult)
          ..add('numberOfItems', numberOfItems))
        .toString();
  }
}

class CreatedListsResultsBuilder
    implements Builder<CreatedListsResults, CreatedListsResultsBuilder> {
  _$CreatedListsResults _$v;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _countryLanguage;
  String get countryLanguage => _$this._countryLanguage;
  set countryLanguage(String countryLanguage) =>
      _$this._countryLanguage = countryLanguage;

  int _featured;
  int get featured => _$this._featured;
  set featured(int featured) => _$this._featured = featured;

  String _revenue;
  String get revenue => _$this._revenue;
  set revenue(String revenue) => _$this._revenue = revenue;

  bool _public;
  bool get public => _$this._public;
  set public(bool public) => _$this._public = public;

  String _updatedAt;
  String get updatedAt => _$this._updatedAt;
  set updatedAt(String updatedAt) => _$this._updatedAt = updatedAt;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  int _sortBy;
  int get sortBy => _$this._sortBy;
  set sortBy(int sortBy) => _$this._sortBy = sortBy;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  int _runtime;
  int get runtime => _$this._runtime;
  set runtime(int runtime) => _$this._runtime = runtime;

  double _averageRating;
  double get averageRating => _$this._averageRating;
  set averageRating(double averageRating) =>
      _$this._averageRating = averageRating;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  int _adult;
  int get adult => _$this._adult;
  set adult(int adult) => _$this._adult = adult;

  int _numberOfItems;
  int get numberOfItems => _$this._numberOfItems;
  set numberOfItems(int numberOfItems) => _$this._numberOfItems = numberOfItems;

  CreatedListsResultsBuilder();

  CreatedListsResultsBuilder get _$this {
    if (_$v != null) {
      _posterPath = _$v.posterPath;
      _name = _$v.name;
      _id = _$v.id;
      _description = _$v.description;
      _countryLanguage = _$v.countryLanguage;
      _featured = _$v.featured;
      _revenue = _$v.revenue;
      _public = _$v.public;
      _updatedAt = _$v.updatedAt;
      _createdAt = _$v.createdAt;
      _sortBy = _$v.sortBy;
      _backdropPath = _$v.backdropPath;
      _runtime = _$v.runtime;
      _averageRating = _$v.averageRating;
      _country = _$v.country;
      _adult = _$v.adult;
      _numberOfItems = _$v.numberOfItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatedListsResults other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreatedListsResults;
  }

  @override
  void update(void Function(CreatedListsResultsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatedListsResults build() {
    final _$result = _$v ??
        new _$CreatedListsResults._(
            posterPath: posterPath,
            name: name,
            id: id,
            description: description,
            countryLanguage: countryLanguage,
            featured: featured,
            revenue: revenue,
            public: public,
            updatedAt: updatedAt,
            createdAt: createdAt,
            sortBy: sortBy,
            backdropPath: backdropPath,
            runtime: runtime,
            averageRating: averageRating,
            country: country,
            adult: adult,
            numberOfItems: numberOfItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
