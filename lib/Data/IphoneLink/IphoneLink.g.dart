// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'IphoneLink.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IphoneLink _$IphoneLinkFromJson(Map<String, dynamic> json) {
  return IphoneLink(
    json['id'] as int?,
    json['social_name'] as String?,
    json['link'] as String?,
    json['created_by'] as int?,
    json['status'] as int?,
  );
}

Map<String, dynamic> _$IphoneLinkToJson(IphoneLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'social_name': instance.social_name,
      'link': instance.link,
      'created_by': instance.created_by,
      'status': instance.status,
    };
