// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'IphoneLink.g.dart';

@JsonSerializable()
class IphoneLink{


  int? id;
  String? social_name;
  String? link;
  int? created_by;
  int? status;


  IphoneLink(
      this.id, this.social_name, this.link, this.created_by, this.status);

  factory IphoneLink.fromJson(Map<String,dynamic>json)=>
      _$IphoneLinkFromJson(json);
  Map<String,dynamic>toJson()=>_$IphoneLinkToJson(this);
}