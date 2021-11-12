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

part 'CategoryNews.g.dart';

@JsonSerializable()
class CategoryNews{


  Cover? feature_news;
  List<Cover>? content;


  CategoryNews(this.feature_news, this.content);

  factory CategoryNews.fromJson(Map<String,dynamic>json)=>
      _$CategoryNewsFromJson(json);
  Map<String,dynamic>toJson()=>_$CategoryNewsToJson(this);
}