// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'YoutubeLink.g.dart';

@JsonSerializable()
class YoutubeLink{


  int? id;
  String? social_name;
  String? link;
  int? created_by;
  int? status;


  YoutubeLink(
      this.id, this.social_name, this.link, this.created_by, this.status);

  factory YoutubeLink.fromJson(Map<String,dynamic>json)=>
      _$YoutubeLinkFromJson(json);
  Map<String,dynamic>toJson()=>_$YoutubeLinkToJson(this);
}