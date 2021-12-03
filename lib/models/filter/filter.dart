import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';
part 'filter.g.dart';

@freezed
class Filter with _$Filter {
  const factory Filter._({
    required FilterOperator operator,
    String? key,
    Object? /*List<Object>|List<Filter>|String*/ value,
  }) = _Filter;

  factory Filter.and(List<Filter> filters) =>
      Filter._(operator: FilterOperator.and, value: filters);

  factory Filter.or(List<Filter> filters) =>
      Filter._(operator: FilterOperator.or, value: filters);

  factory Filter.nor(List<Filter> filters) =>
      Filter._(operator: FilterOperator.nor, value: filters);

  factory Filter.equal(String key, Object value) =>
      Filter._(operator: FilterOperator.equal, key: key, value: value);

  factory Filter.notEqual(String key, Object value) =>
      Filter._(operator: FilterOperator.notEqual, key: key, value: value);

  factory Filter.greater(String key, Object value) =>
      Filter._(operator: FilterOperator.greater, key: key, value: value);

  factory Filter.greaterOrEqual(String key, Object value) =>
      Filter._(operator: FilterOperator.greaterOrEqual, key: key, value: value);

  factory Filter.less(String key, Object value) =>
      Filter._(operator: FilterOperator.less, key: key, value: value);

  factory Filter.lessOrEqual(String key, Object value) =>
      Filter._(operator: FilterOperator.lessOrEqual, key: key, value: value);

  factory Filter.in_(String key, List<Object> values) =>
      Filter._(operator: FilterOperator.in_, key: key, value: values);

  factory Filter.notIn(String key, List<Object> values) =>
      Filter._(operator: FilterOperator.notIn, key: key, value: values);

  factory Filter.query(String key, String text) =>
      Filter._(operator: FilterOperator.query, key: key, value: text);

  factory Filter.autoComplete(String key, String text) =>
      Filter._(operator: FilterOperator.autoComplete, key: key, value: text);

  factory Filter.exists(String key, {bool exists = true}) =>
      Filter._(operator: FilterOperator.exists, key: key, value: exists);

  factory Filter.notExists(String key) => Filter.exists(key, exists: false);

  factory Filter.contains(String key, Object value) =>
      Filter._(operator: FilterOperator.contains, key: key, value: value);
}

@freezed
class SortOption<T> with _$SortOption<T> {
  const factory SortOption({
    required String field,
    required int direction,
    @JsonKey(ignore: true) Function(T, T)? comparator,
  }) = _SortOption;

  factory SortOption.fromJson(Map<String, dynamic> json) =>
      _$SortOptionFromJson(json);

  static const ASC = 1;
  static const DESC = -1;
}

@freezed
class PaginationParams with _$PaginationParams {
  const factory PaginationParams({
    @Default(10) int limit,
    int? offset,
    String? next,
    @JsonKey(name: 'id_gt') String? greaterThan,
    @JsonKey(name: 'id_gte') String? greaterThanOrEqual,
    @JsonKey(name: 'id_lt') String? lessThan,
    @JsonKey(name: 'id_lte') String? lessThanOrEqual,
  }) = _PaginationParams;

  factory PaginationParams.fromJson(Map<String, dynamic> json) =>
      _$PaginationParamsFromJson(json);
}

const _groupOperators = [
  FilterOperator.and,
  FilterOperator.or,
  FilterOperator.nor,
];

enum FilterOperator {
  equal,
  notEqual,
  greater,
  greaterOrEqual,
  less,
  lessOrEqual,
  in_,
  notIn,
  query,
  autoComplete,
  exists,
  and,
  or,
  nor,
  contains,
}

extension FilterOperatorX on FilterOperator {
  String get rawValue => {
        FilterOperator.equal: '\$eq',
        FilterOperator.notEqual: '\$ne',
        FilterOperator.greater: '\$gt',
        FilterOperator.greaterOrEqual: '\$gte',
        FilterOperator.less: '\$lt',
        FilterOperator.lessOrEqual: '\$lte',
        FilterOperator.in_: '\$in',
        FilterOperator.notIn: '\$nin',
        FilterOperator.query: '\$q',
        FilterOperator.autoComplete: '\$autocomplete',
        FilterOperator.exists: '\$exists',
        FilterOperator.and: '\$and',
        FilterOperator.or: '\$or',
        FilterOperator.nor: '\$nor',
        FilterOperator.contains: '\$contains',
      }[this]!;
}
