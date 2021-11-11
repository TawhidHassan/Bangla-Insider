// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'FooterContent.g.dart';

@JsonSerializable()
class FooterContent{


  int? id;
  String? type;
  String? title;
  String? en_title;
  String? short_description;
  String? en_short_description;
  String? description;
  String? en_description;
  int? media_id;
  int? modified_by;
  int? status;


  FooterContent(
      this.id,
      this.type,
      this.title,
      this.en_title,
      this.short_description,
      this.en_short_description,
      this.description,
      this.en_description,
      this.media_id,
      this.modified_by,
      this.status);

  factory FooterContent.fromJson(Map<String,dynamic>json)=>
      _$FooterContentFromJson(json);
  Map<String,dynamic>toJson()=>_$FooterContentToJson(this);
}