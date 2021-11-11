// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LiveCode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveCode _$LiveCodeFromJson(Map<String, dynamic> json) {
  return LiveCode(
    json['id'] as int?,
    json['youtube_code'] as String?,
    json['status'] as int?,
  );
}

Map<String, dynamic> _$LiveCodeToJson(LiveCode instance) => <String, dynamic>{
      'id': instance.id,
      'youtube_code': instance.youtube_code,
      'status': instance.status,
    };
