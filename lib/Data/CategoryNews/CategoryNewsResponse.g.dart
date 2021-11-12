// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CategoryNewsResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryNewsResponse _$CategoryNewsResponseFromJson(Map<String, dynamic> json) {
  return CategoryNewsResponse(
    json['success'] as int?,
    json['data'] == null
        ? null
        : CategoryNews.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CategoryNewsResponseToJson(
        CategoryNewsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
