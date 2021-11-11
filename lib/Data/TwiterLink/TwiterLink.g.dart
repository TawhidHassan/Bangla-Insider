// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TwiterLink.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TwiterLink _$TwiterLinkFromJson(Map<String, dynamic> json) {
  return TwiterLink(
    json['id'] as int?,
    json['social_name'] as String?,
    json['link'] as String?,
    json['created_by'] as int?,
    json['status'] as int?,
  );
}

Map<String, dynamic> _$TwiterLinkToJson(TwiterLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'social_name': instance.social_name,
      'link': instance.link,
      'created_by': instance.created_by,
      'status': instance.status,
    };
