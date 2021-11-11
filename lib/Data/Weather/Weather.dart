// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'Weather.g.dart';

@JsonSerializable()
class Weather{


  int? id;
  String? weather_date;
  String? type;
  String? temperature;
  String? precipitation;
  String? wind;
  int? status;


  Weather(this.id, this.weather_date, this.type, this.temperature,
      this.precipitation, this.wind, this.status);



  factory Weather.fromJson(Map<String,dynamic>json)=>
      _$WeatherFromJson(json);
  Map<String,dynamic>toJson()=>_$WeatherToJson(this);
}