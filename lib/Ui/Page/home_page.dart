import 'package:banglainsider/Bloc/Home/home_cubit.dart';
import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Ui/Page/CategoryNews/category_news3.dart';
import 'package:banglainsider/Ui/Widgets/Ads/banner_ad.dart';
import 'package:banglainsider/Ui/Widgets/Ads/banner_ad2.dart';
import 'package:banglainsider/Ui/Widgets/Banner/FestonBanner/feston_banner.dart';
import 'package:banglainsider/Ui/Widgets/Banner/HomeTopBaner/top_banner.dart';
import 'package:banglainsider/Ui/Widgets/BreakingNews/braking_news.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithDetailsBig/news_card_big_With_deatils.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithDetailsBig/news_card_big_With_deatils_image_top.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithDetailsBig/news_card_big_without_image.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithTitle/news_card_with_title.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithTitleSortDescrip/news_card_title_sort_discr.dart';
import 'package:banglainsider/Ui/Widgets/Card/TitleCard/title_news_card.dart';
import 'package:banglainsider/Ui/Widgets/FloatingText/floating_text.dart';
import 'package:banglainsider/Ui/Widgets/HighlightNews/high_light_news.dart';
import 'package:banglainsider/Ui/Widgets/HighlightNews/high_light_news2.dart';
import 'package:banglainsider/Ui/Widgets/HighlightNews/high_light_news_big_iamge.dart';
import 'package:banglainsider/Ui/Widgets/HotNews/hor_news.dart';
import 'package:banglainsider/Ui/Widgets/Menu/Drawer/drawer.dart';
import 'package:banglainsider/Ui/Widgets/Openion/public_opinion.dart';
import 'package:banglainsider/Ui/Widgets/Simmer/home_simmer.dart';
import 'package:banglainsider/Ui/Widgets/Sironame/sironame.dart';
import 'package:banglainsider/Ui/Widgets/TabView/HomeCustomTabView/tabview_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'CategoryNews/Footer.dart';
import 'CategoryNews/category_news1.dart';
import 'CategoryNews/category_news10.dart';
import 'CategoryNews/category_news11.dart';
import 'CategoryNews/category_news12.dart';
import 'CategoryNews/category_news13.dart';
import 'CategoryNews/category_news14.dart';
import 'CategoryNews/category_news15.dart';
import 'CategoryNews/category_news16.dart';
import 'CategoryNews/category_news17.dart';
import 'CategoryNews/category_news18.dart';
import 'CategoryNews/category_news19.dart';
import 'CategoryNews/category_news2.dart';
import 'CategoryNews/category_news20.dart';
import 'CategoryNews/category_news21.dart';
import 'CategoryNews/category_news22.dart';
import 'CategoryNews/category_news23.dart';
import 'CategoryNews/category_news24.dart';
import 'CategoryNews/category_news4.dart';
import 'CategoryNews/category_news5.dart';
import 'CategoryNews/category_news6.dart';
import 'CategoryNews/category_news7.dart';
import 'CategoryNews/category_news8.dart';
import 'CategoryNews/category_news9.dart';
import 'CategoryNews/weather.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<HomeCubit>(context).homeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if(state is !HomeData){
          return HomeShimer();
        }
        final data=(state as HomeData).homeResponse;
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.blueAccent),
              title:InkWell(
                onTap: (){
                  Navigator.pushNamed(context, HOME_PAGE);
                },
                child: Center(
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  child: InkWell(
                      onTap: (){

                      },
                      child: Icon(Icons.search,size: 30,color: Colors.blueAccent,)),
                )
              ],
            ),
            drawer:CustomDrawer(menus: data!.data!.menus,weather: data.data!.weather,footerContent: data.data!.footer_content ,),
            body: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(bottom: 30),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  CustomTabView(menus: data.data!.menus,weather: data.data!.weather,footerContent: data.data!.footer_content ,),
                  BrakingNews(text: data.data!.breaking_news![0].headline,),
                  TopBanner(image: data.data!.banner_1!.media!.thumbnail,),
                  HotNews(cover: data.data!.cover1,footerContent:data.data!.footer_content ,),
                  HeighLightNews(cover: data.data!.cover2,footerContent:data.data!.footer_content ),
                  HeighLightNews(cover: data.data!.cover4,footerContent:data.data!.footer_content ),
                  Sironame(),
                  Sironame(),
                  Container(
                    margin: EdgeInsets.all(12),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xFFc2dff1),
                    child: Center(
                      child: Text("Live"),
                    ),
                  ),
                  BannerAds(image:data.data!.full_ad!.media!.thumbnail ,),
                  HeighLightNewsTwo(cover: data.data!.cover5,footerContent:data.data!.footer_content),
                  HeighLightNewsTwo(cover: data.data!.cover6,footerContent:data.data!.footer_content),
                  PublicOpenion(),
                  BannerAdsBig(image:data.data!.side_ad_1!.media!.thumbnail ,),
                  HeighLightNews(cover: data.data!.cover7,footerContent:data.data!.footer_content),
                  HeighLightNews(cover: data.data!.cover8,footerContent:data.data!.footer_content),
                  HeighLightNewsTwo(cover: data.data!.cover9,footerContent:data.data!.footer_content),
                  HeighLightNewsTwo(cover: data.data!.cover10,footerContent:data.data!.footer_content),
                  BannerAdsBig(image:data.data!.side_ad_2!.media!.thumbnail ,),


                  CategoryNews1(category: "পবাংলাদেশ ইনসাইড ",lan: 1,menuId: 1,footerContent: data.data!.footer_content,),
                  CategoryNews2(category: "ইনসাইড পলিটিক্স  ",lan: 1,menuId: 4,footerContent: data.data!.footer_content),
                  CategoryNews3(category: "ইনসাইডার এক্সক্লুসিভ  ",lan: 1,menuId: 5,footerContent: data.data!.footer_content),
                  CategoryNews4(category: "ইনসাইড গ্রাউন্ড  ",lan: 1,menuId: 6,footerContent: data.data!.footer_content),
                  CategoryNews5(category: "ইনসাইড টক   ",lan: 1,menuId: 7,footerContent: data.data!.footer_content),
                  CategoryNews6(category: "এডিটর'স মাইন্ড   ",lan: 1,menuId: 8,footerContent: data.data!.footer_content),
                  CategoryNews7(category: "কালার ইনসাইড   ",lan: 1,menuId: 9,footerContent: data.data!.footer_content),
                  CategoryNews8(category: "ইনসাইড থট   ",lan: 1,menuId: 10,footerContent: data.data!.footer_content),
                  CategoryNews9(category: "ইনসাইড আর্টিকেল   ",lan: 1,menuId: 11,footerContent: data.data!.footer_content),
                  CategoryNews10(category: "লিভিং ইনসাইড   ",lan: 1,menuId: 12,footerContent: data.data!.footer_content),
                  CategoryNews11(category: "লইনসাইড হেলথ   ",lan: 1,menuId: 13,footerContent: data.data!.footer_content),
                  CategoryNews12(category: "ইনসাইড ইকোনমি   ",lan: 1,menuId: 15,footerContent: data.data!.footer_content),
                  CategoryNews13(category: "ইনসাইড ট্রেড   ",lan: 1,menuId: 16,footerContent: data.data!.footer_content),
                  CategoryNews14(category: "ইনসাইডার ইনভেস্টিগেশন   ",lan: 1,menuId: 17,footerContent: data.data!.footer_content),
                  CategoryNews15(category: "লিট ইনসাইড     ",lan: 1,menuId: 19,footerContent: data.data!.footer_content),
                  CategoryNews16(category: "ইনসাইড এডুকেশন    ",lan: 1,menuId: 20,footerContent: data.data!.footer_content),
                  CategoryNews17(category: "ইনসাইড ক্যারিয়ার    ",lan: 1,menuId: 21,footerContent: data.data!.footer_content),
                  CategoryNews18(category: "টেক ইনসাইড    ",lan: 1,menuId: 22,footerContent: data.data!.footer_content),
                  CategoryNews19(category: "ইনসাইড সাইন্স     ",lan: 1,menuId: 23,footerContent: data.data!.footer_content),
                  CategoryNews20(category: "ইনসাইড কোর্ট     ",lan: 1,menuId: 24,footerContent: data.data!.footer_content),
                  CategoryNews21(category: "সোশ্যাল থট     ",lan: 1,menuId: 25,footerContent: data.data!.footer_content),
                  CategoryNews22(category: "প্রেস  ইনসাইড     ",lan: 1,menuId: 26,footerContent: data.data!.footer_content),
                  CategoryNews23(category: "ইউথ থট     ",lan: 1,menuId: 27,footerContent: data.data!.footer_content),
                  CategoryNews24(category: "ক্লাব ইনসাইড     ",lan: 1,menuId: 28,footerContent: data.data!.footer_content),


                  WeatherWidget(category: "ইনসাইড ওয়েদার     ",weather: data.data!.weather,),

                  NewsCardWithTitleSortDiscrip(cover: data.data!.cover9,footerContent: data.data!.footer_content,),
                  NewsCardWithTitleSortDiscrip(cover: data.data!.cover10,footerContent: data.data!.footer_content,),


                  Footer(footerContent: data.data!.footer_content,),
                  // NewsCardWithTitle(),
                  // NewsCardWithTitle(),
                  // NewsCardWithTitle(),
                  // NewsCardWithTitle(),
                  // NewsCardWithTitle(),
                  // TitleNewsCard(),
                  // TitleNewsCard(),
                  // TitleNewsCard(),
                  // TitleNewsCard(),
                  // TitleNewsCard(),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
