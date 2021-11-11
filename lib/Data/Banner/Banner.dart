// ignore_for_file: file_names
import 'package:banglainsider/Data/Media/Media.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Banner.g.dart';

@JsonSerializable()
class Banner{


  int? id;
  String? name;
  int? ad_position_id;
  int? media_id;
  String? publish_date;
  String? expire_date;
  int? status;
  Media? media;


  Banner(this.id, this.name, this.ad_position_id, this.media_id,
      this.publish_date, this.expire_date, this.status, this.media);

  factory Banner.fromJson(Map<String,dynamic>json)=>
      _$BannerFromJson(json);
  Map<String,dynamic>toJson()=>_$BannerToJson(this);
}