// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'AndroidLink.g.dart';

@JsonSerializable()
class AndroidLink{


  int? id;
  String? social_name;
  String? link;
  int? created_by;
  int? status;


  AndroidLink(
      this.id, this.social_name, this.link, this.created_by, this.status);

  factory AndroidLink.fromJson(Map<String,dynamic>json)=>
      _$AndroidLinkFromJson(json);
  Map<String,dynamic>toJson()=>_$AndroidLinkToJson(this);
}