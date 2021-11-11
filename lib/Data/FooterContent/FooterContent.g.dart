// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FooterContent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FooterContent _$FooterContentFromJson(Map<String, dynamic> json) {
  return FooterContent(
    json['id'] as int?,
    json['type'] as String?,
    json['title'] as String?,
    json['en_title'] as String?,
    json['short_description'] as String?,
    json['en_short_description'] as String?,
    json['description'] as String?,
    json['en_description'] as String?,
    json['media_id'] as int?,
    json['modified_by'] as int?,
    json['status'] as int?,
  );
}

Map<String, dynamic> _$FooterContentToJson(FooterContent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'en_title': instance.en_title,
      'short_description': instance.short_description,
      'en_short_description': instance.en_short_description,
      'description': instance.description,
      'en_description': instance.en_description,
      'media_id': instance.media_id,
      'modified_by': instance.modified_by,
      'status': instance.status,
    };
