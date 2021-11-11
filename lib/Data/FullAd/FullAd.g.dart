// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FullAd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FullAd _$FullAdFromJson(Map<String, dynamic> json) {
  return FullAd(
    json['id'] as int?,
    json['ad_position_id'] as int?,
    json['media_id'] as int?,
    json['publish_date'] as String?,
    json['expire_date'] as String?,
    json['created_by'] as int?,
    json['status'] as int?,
  );
}

Map<String, dynamic> _$FullAdToJson(FullAd instance) => <String, dynamic>{
      'id': instance.id,
      'ad_position_id': instance.ad_position_id,
      'media_id': instance.media_id,
      'publish_date': instance.publish_date,
      'expire_date': instance.expire_date,
      'created_by': instance.created_by,
      'status': instance.status,
    };
