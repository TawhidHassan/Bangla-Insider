// ignore_for_file: file_names
import 'package:banglainsider/Data/Media/Media.dart';
import 'package:json_annotation/json_annotation.dart';

part 'SideAd.g.dart';

@JsonSerializable()
class SideAd{


  int? id;
  int? ad_position_id;
  int? media_id;
  String? publish_date;
  String? expire_date;
  int? status;
  Media? media;


  SideAd(this.id, this.ad_position_id, this.media_id, this.publish_date,
      this.expire_date, this.status, this.media);

  factory SideAd.fromJson(Map<String,dynamic>json)=>
      _$SideAdFromJson(json);
  Map<String,dynamic>toJson()=>_$SideAdToJson(this);
}