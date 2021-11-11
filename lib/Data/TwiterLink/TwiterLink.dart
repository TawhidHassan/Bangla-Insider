// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'TwiterLink.g.dart';

@JsonSerializable()
class TwiterLink{


  int? id;
  String? social_name;
  String? link;
  int? created_by;
  int? status;


  TwiterLink(
      this.id, this.social_name, this.link, this.created_by, this.status);

  factory TwiterLink.fromJson(Map<String,dynamic>json)=>
      _$TwiterLinkFromJson(json);
  Map<String,dynamic>toJson()=>_$TwiterLinkToJson(this);
}