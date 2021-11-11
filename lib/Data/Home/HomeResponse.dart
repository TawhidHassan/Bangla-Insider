// ignore_for_file: file_names

import 'package:banglainsider/Data/Home/Home.dart';
import 'package:json_annotation/json_annotation.dart';

part 'HomeResponse.g.dart';

@JsonSerializable()
class HomeResponse{

  int? success;
  Home? data;

  HomeResponse(this.success, this.data);

  factory HomeResponse.fromJson(Map<String,dynamic>json)=>
      _$HomeResponseFromJson(json);
  Map<String,dynamic>toJson()=>_$HomeResponseToJson(this);
}