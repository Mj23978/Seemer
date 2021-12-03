// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SortOption<T> _$$_SortOptionFromJson<T>(Map<String, dynamic> json) =>
    _$_SortOption<T>(
      field: json['field'] as String,
      direction: json['direction'] as int,
    );

Map<String, dynamic> _$$_SortOptionToJson<T>(_$_SortOption<T> instance) =>
    <String, dynamic>{
      'field': instance.field,
      'direction': instance.direction,
    };

_$_PaginationParams _$$_PaginationParamsFromJson(Map<String, dynamic> json) =>
    _$_PaginationParams(
      limit: json['limit'] as int? ?? 10,
      offset: json['offset'] as int?,
      next: json['next'] as String?,
      greaterThan: json['id_gt'] as String?,
      greaterThanOrEqual: json['id_gte'] as String?,
      lessThan: json['id_lt'] as String?,
      lessThanOrEqual: json['id_lte'] as String?,
    );

Map<String, dynamic> _$$_PaginationParamsToJson(_$_PaginationParams instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'next': instance.next,
      'id_gt': instance.greaterThan,
      'id_gte': instance.greaterThanOrEqual,
      'id_lt': instance.lessThan,
      'id_lte': instance.lessThanOrEqual,
    };
