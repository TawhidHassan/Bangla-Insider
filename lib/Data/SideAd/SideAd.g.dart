// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SideAd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SideAd _$SideAdFromJson(Map<String, dynamic> json) {
  return SideAd(
    json['id'] as int?,
    json['ad_position_id'] as int?,
    json['media_id'] as int?,
    json['publish_date'] as String?,
    json['expire_date'] as String?,
    json['status'] as int?,
    json['media'] == null
        ? null
        : Media.fromJson(json['media'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SideAdToJson(SideAd instance) => <String, dynamic>{
      'id': instance.id,
      'ad_position_id': instance.ad_position_id,
      'media_id': instance.media_id,
      'publish_date': instance.publish_date,
      'expire_date': instance.expire_date,
      'status': instance.status,
      'media': instance.media,
    };
