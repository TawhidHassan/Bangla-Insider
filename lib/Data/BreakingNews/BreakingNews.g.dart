// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BreakingNews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreakingNews _$BreakingNewsFromJson(Map<String, dynamic> json) {
  return BreakingNews(
    json['id'] as int?,
    json['language'] as int?,
    json['headline'] as String?,
    json['redirect_url'] as String?,
    json['created_by'] as int?,
    json['status'] as int?,
  );
}

Map<String, dynamic> _$BreakingNewsToJson(BreakingNews instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language': instance.language,
      'headline': instance.headline,
      'redirect_url': instance.redirect_url,
      'created_by': instance.created_by,
      'status': instance.status,
    };
