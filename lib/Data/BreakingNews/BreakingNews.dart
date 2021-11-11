// ignore_for_file: file_names

import 'package:json_annotation/json_annotation.dart';

part 'BreakingNews.g.dart';

@JsonSerializable()
class BreakingNews{


  int? id;
  int? language;
  String? headline;
  String? redirect_url;
  int? created_by;
  int? status;


  BreakingNews(this.id, this.language, this.headline, this.redirect_url,
      this.created_by, this.status);

  factory BreakingNews.fromJson(Map<String,dynamic>json)=>
      _$BreakingNewsFromJson(json);
  Map<String,dynamic>toJson()=>_$BreakingNewsToJson(this);
}