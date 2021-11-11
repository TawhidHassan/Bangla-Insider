// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'Media.g.dart';

@JsonSerializable()
class Media{


  int? id;
  String? type;
  String? thumbnail;
  String? main_file;
  String? location;
  String? url;
  String? caption;
  int? created_by;
  int? status;


  Media(this.id, this.type, this.thumbnail, this.main_file, this.location,
      this.url, this.caption, this.created_by, this.status);

  factory Media.fromJson(Map<String,dynamic>json)=>
      _$MediaFromJson(json);
  Map<String,dynamic>toJson()=>_$MediaToJson(this);
}