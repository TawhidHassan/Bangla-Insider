// ignore_for_file: file_names
import 'package:banglainsider/Data/Media/Media.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Cover.g.dart';

@JsonSerializable()
class Cover{


  int? id;
  int? language;
  String? headline;
  String? short_description;
  String? description;
  String? slug;
  int? menu_id;
  int? sub_menu_id;
  int? media_id;
  int? division_id;
  String? publish_date;
  int? status;
  Media? media;


  Cover(
      this.id,
      this.language,
      this.headline,
      this.short_description,
      this.description,
      this.slug,
      this.menu_id,
      this.sub_menu_id,
      this.media_id,
      this.division_id,
      this.publish_date,
      this.status,
      this.media);

  factory Cover.fromJson(Map<String,dynamic>json)=>
      _$CoverFromJson(json);
  Map<String,dynamic>toJson()=>_$CoverToJson(this);
}