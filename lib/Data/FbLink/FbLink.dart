// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'FbLink.g.dart';

@JsonSerializable()
class FbLink{


  int? id;
  String? social_name;
  String? link;
  int? created_by;
  int? status;


  FbLink(this.id, this.social_name, this.link, this.created_by, this.status);

  factory FbLink.fromJson(Map<String,dynamic>json)=>
      _$FbLinkFromJson(json);
  Map<String,dynamic>toJson()=>_$FbLinkToJson(this);
}