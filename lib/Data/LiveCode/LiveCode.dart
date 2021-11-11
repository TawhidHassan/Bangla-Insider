// ignore_for_file: file_names
import 'package:banglainsider/Data/Media/Media.dart';
import 'package:json_annotation/json_annotation.dart';

part 'LiveCode.g.dart';

@JsonSerializable()
class LiveCode{


  int? id;
  String? youtube_code;
  int? status;

  LiveCode(this.id, this.youtube_code, this.status);

  factory LiveCode.fromJson(Map<String,dynamic>json)=>
      _$LiveCodeFromJson(json);
  Map<String,dynamic>toJson()=>_$LiveCodeToJson(this);
}