// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CategoryNews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryNews _$CategoryNewsFromJson(Map<String, dynamic> json) {
  return CategoryNews(
    json['feature_news'] == null
        ? null
        : Cover.fromJson(json['feature_news'] as Map<String, dynamic>),
    (json['content'] as List<dynamic>?)
        ?.map((e) => Cover.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CategoryNewsToJson(CategoryNews instance) =>
    <String, dynamic>{
      'feature_news': instance.feature_news,
      'content': instance.content,
    };
