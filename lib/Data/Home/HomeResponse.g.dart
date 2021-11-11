// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  return HomeResponse(
    json['success'] as int?,
    json['data'] == null
        ? null
        : Home.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };
