// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Home _$HomeFromJson(Map<String, dynamic> json) {
  return Home(
    (json['menus'] as List<dynamic>?)
        ?.map((e) => Menu.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['weather'] == null
        ? null
        : Weather.fromJson(json['weather'] as Map<String, dynamic>),
    json['footer_content'] == null
        ? null
        : FooterContent.fromJson(
            json['footer_content'] as Map<String, dynamic>),
    json['fb_link'] == null
        ? null
        : FbLink.fromJson(json['fb_link'] as Map<String, dynamic>),
    json['twitter_link'] == null
        ? null
        : TwiterLink.fromJson(json['twitter_link'] as Map<String, dynamic>),
    json['instagram_link'] == null
        ? null
        : InstagramLink.fromJson(
            json['instagram_link'] as Map<String, dynamic>),
    json['linkdin_link'] == null
        ? null
        : LinkdinLink.fromJson(json['linkdin_link'] as Map<String, dynamic>),
    json['youtube_link'] == null
        ? null
        : YoutubeLink.fromJson(json['youtube_link'] as Map<String, dynamic>),
    json['android'] == null
        ? null
        : AndroidLink.fromJson(json['android'] as Map<String, dynamic>),
    json['iphone'] == null
        ? null
        : IphoneLink.fromJson(json['iphone'] as Map<String, dynamic>),
    (json['breaking_news'] as List<dynamic>?)
        ?.map((e) => BreakingNews.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['full_ad'] == null
        ? null
        : FullAd.fromJson(json['full_ad'] as Map<String, dynamic>),
    json['banner_1'] == null
        ? null
        : Banner.fromJson(json['banner_1'] as Map<String, dynamic>),
    json['side_ad_1'] == null
        ? null
        : SideAd.fromJson(json['side_ad_1'] as Map<String, dynamic>),
    json['side_ad_2'] == null
        ? null
        : SideAd.fromJson(json['side_ad_2'] as Map<String, dynamic>),
    json['cover1'] == null
        ? null
        : Cover.fromJson(json['cover1'] as Map<String, dynamic>),
    json['cover2'] == null
        ? null
        : Cover.fromJson(json['cover2'] as Map<String, dynamic>),
    json['cover3'] == null
        ? null
        : Cover.fromJson(json['cover3'] as Map<String, dynamic>),
    json['cover4'] == null
        ? null
        : Cover.fromJson(json['cover4'] as Map<String, dynamic>),
    json['cover5'] == null
        ? null
        : Cover.fromJson(json['cover5'] as Map<String, dynamic>),
    json['cover6'] == null
        ? null
        : Cover.fromJson(json['cover6'] as Map<String, dynamic>),
    json['cover7'] == null
        ? null
        : Cover.fromJson(json['cover7'] as Map<String, dynamic>),
    json['cover8'] == null
        ? null
        : Cover.fromJson(json['cover8'] as Map<String, dynamic>),
    json['cover9'] == null
        ? null
        : Cover.fromJson(json['cover9'] as Map<String, dynamic>),
    json['cover10'] == null
        ? null
        : Cover.fromJson(json['cover10'] as Map<String, dynamic>),
    json['live_code'] == null
        ? null
        : LiveCode.fromJson(json['live_code'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
      'menus': instance.menus,
      'weather': instance.weather,
      'footer_content': instance.footer_content,
      'fb_link': instance.fb_link,
      'twitter_link': instance.twitter_link,
      'instagram_link': instance.instagram_link,
      'linkdin_link': instance.linkdin_link,
      'youtube_link': instance.youtube_link,
      'android': instance.android,
      'iphone': instance.iphone,
      'breaking_news': instance.breaking_news,
      'full_ad': instance.full_ad,
      'banner_1': instance.banner_1,
      'side_ad_1': instance.side_ad_1,
      'side_ad_2': instance.side_ad_2,
      'cover1': instance.cover1,
      'cover2': instance.cover2,
      'cover3': instance.cover3,
      'cover4': instance.cover4,
      'cover5': instance.cover5,
      'cover6': instance.cover6,
      'cover7': instance.cover7,
      'cover8': instance.cover8,
      'cover9': instance.cover9,
      'cover10': instance.cover10,
      'live_code': instance.live_code,
    };
