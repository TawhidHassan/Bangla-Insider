// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Cover.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cover _$CoverFromJson(Map<String, dynamic> json) {
  return Cover(
    json['id'] as int?,
    json['language'] as int?,
    json['headline'] as String?,
    json['short_description'] as String?,
    json['description'] as String?,
    json['slug'] as String?,
    json['menu_id'] as int?,
    json['sub_menu_id'] as int?,
    json['media_id'] as int?,
    json['division_id'] as int?,
    json['publish_date'] as String?,
    json['status'] as int?,
    json['media'] == null
        ? null
        : Media.fromJson(json['media'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CoverToJson(Cover instance) => <String, dynamic>{
      'id': instance.id,
      'language': instance.language,
      'headline': instance.headline,
      'short_description': instance.short_description,
      'description': instance.description,
      'slug': instance.slug,
      'menu_id': instance.menu_id,
      'sub_menu_id': instance.sub_menu_id,
      'media_id': instance.media_id,
      'division_id': instance.division_id,
      'publish_date': instance.publish_date,
      'status': instance.status,
      'media': instance.media,
    };
