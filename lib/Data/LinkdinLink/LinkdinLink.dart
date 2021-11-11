// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'LinkdinLink.g.dart';

@JsonSerializable()
class LinkdinLink{


  int? id;
  String? social_name;
  String? link;
  int? created_by;
  int? status;


  LinkdinLink(
      this.id, this.social_name, this.link, this.created_by, this.status);

  factory LinkdinLink.fromJson(Map<String,dynamic>json)=>
      _$LinkdinLinkFromJson(json);
  Map<String,dynamic>toJson()=>_$LinkdinLinkToJson(this);
}