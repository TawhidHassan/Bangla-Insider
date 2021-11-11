// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'InstagramLink.g.dart';

@JsonSerializable()
class InstagramLink{


  int? id;
  String? social_name;
  String? link;
  int? created_by;
  int? status;


  InstagramLink(
      this.id, this.social_name, this.link, this.created_by, this.status);

  factory InstagramLink.fromJson(Map<String,dynamic>json)=>
      _$InstagramLinkFromJson(json);
  Map<String,dynamic>toJson()=>_$InstagramLinkToJson(this);
}