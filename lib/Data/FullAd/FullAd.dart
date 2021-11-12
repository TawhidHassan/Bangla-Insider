// ignore_for_file: file_names

import 'package:banglainsider/Data/Media/Media.dart';
import 'package:json_annotation/json_annotation.dart';

part 'FullAd.g.dart';

@JsonSerializable()
class FullAd{


  int? id;
  int? ad_position_id;
  int? media_id;
  String? publish_date;
  String? expire_date;
  int? created_by;
  int? status;
  Media? media;


  FullAd(this.id, this.ad_position_id, this.media_id, this.publish_date,
      this.expire_date, this.created_by, this.status, this.media);

  factory FullAd.fromJson(Map<String,dynamic>json)=>
      _$FullAdFromJson(json);
  Map<String,dynamic>toJson()=>_$FullAdToJson(this);
}