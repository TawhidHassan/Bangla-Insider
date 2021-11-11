// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) {
  return Media(
    json['id'] as int?,
    json['type'] as String?,
    json['thumbnail'] as String?,
    json['main_file'] as String?,
    json['location'] as String?,
    json['url'] as String?,
    json['caption'] as String?,
    json['created_by'] as int?,
    json['status'] as int?,
  );
}

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'thumbnail': instance.thumbnail,
      'main_file': instance.main_file,
      'location': instance.location,
      'url': instance.url,
      'caption': instance.caption,
      'created_by': instance.created_by,
      'status': instance.status,
    };
