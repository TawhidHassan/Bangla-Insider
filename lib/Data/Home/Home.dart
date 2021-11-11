// ignore_for_file: file_names


import 'package:banglainsider/Data/AndroidLink/AndroidLink.dart';
import 'package:banglainsider/Data/Banner/Banner.dart';
import 'package:banglainsider/Data/BreakingNews/BreakingNews.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FbLink/FbLink.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:banglainsider/Data/FullAd/FullAd.dart';
import 'package:banglainsider/Data/InstagramLink/InstagramLink.dart';
import 'package:banglainsider/Data/IphoneLink/IphoneLink.dart';
import 'package:banglainsider/Data/LinkdinLink/LinkdinLink.dart';
import 'package:banglainsider/Data/LiveCode/LiveCode.dart';
import 'package:banglainsider/Data/Menus/Menu.dart';
import 'package:banglainsider/Data/SideAd/SideAd.dart';
import 'package:banglainsider/Data/TwiterLink/TwiterLink.dart';
import 'package:banglainsider/Data/Weather/Weather.dart';
import 'package:banglainsider/Data/YoutubeLink/YoutubeLink.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Home.g.dart';

@JsonSerializable()
class Home{



  List<Menu>? menus;
  Weather? weather;
  FooterContent? footer_content;
  FbLink? fb_link;
  TwiterLink? twitter_link;
  InstagramLink? instagram_link;
  LinkdinLink? linkdin_link;
  YoutubeLink? youtube_link;
  AndroidLink? android;
  IphoneLink? iphone;
  List<BreakingNews>? breaking_news;
  FullAd? full_ad;
  Banner? banner_1;
  SideAd? side_ad_1;
  SideAd? side_ad_2;
  Cover? cover1;
  Cover? cover2;
  Cover? cover3;
  Cover? cover4;
  Cover? cover5;
  Cover? cover6;
  Cover? cover7;
  Cover? cover8;
  Cover? cover9;
  Cover? cover10;
  LiveCode? live_code;


  Home(

      this.menus,
      this.weather,
      this.footer_content,
      this.fb_link,
      this.twitter_link,
      this.instagram_link,
      this.linkdin_link,
      this.youtube_link,
      this.android,
      this.iphone,
      this.breaking_news,
      this.full_ad,
      this.banner_1,
      this.side_ad_1,
      this.side_ad_2,
      this.cover1,
      this.cover2,
      this.cover3,
      this.cover4,
      this.cover5,
      this.cover6,
      this.cover7,
      this.cover8,
      this.cover9,
      this.cover10,
      this.live_code);

  factory Home.fromJson(Map<String,dynamic>json)=>
      _$HomeFromJson(json);
  Map<String,dynamic>toJson()=>_$HomeToJson(this);
}