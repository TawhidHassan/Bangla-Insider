// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    json['id'] as int?,
    json['weather_date'] as String?,
    json['type'] as String?,
    json['temperature'] as String?,
    json['precipitation'] as String?,
    json['wind'] as String?,
    json['status'] as int?,
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'weather_date': instance.weather_date,
      'type': instance.type,
      'temperature': instance.temperature,
      'precipitation': instance.precipitation,
      'wind': instance.wind,
      'status': instance.status,
    };
