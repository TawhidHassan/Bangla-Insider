import 'package:banglainsider/Bloc/Home/home_cubit.dart';
import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
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
import 'CategoryNews/category_news1.dart';
import 'CategoryNews/category_news2.dart';
import 'CategoryNews/category_news3.dart';

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
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.blueAccent),
            title:Center(
              child: Image.asset('assets/images/logo.png'),
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
          drawer:CustomDrawer(menus: data!.data!.menus,),
          body: Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(bottom: 30),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                CustomTabView(menus: data.data!.menus,),
                BrakingNews(text: data.data!.breaking_news![0].headline,),
                TopBanner(image: data.data!.banner_1!.media!.thumbnail,),
                HotNews(cover: data.data!.cover1),
                HeighLightNews(cover: data.data!.cover2),
                HeighLightNews(cover: data.data!.cover4),
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
                HeighLightNewsTwo(cover: data.data!.cover5),
                HeighLightNewsTwo(cover: data.data!.cover6),
                PublicOpenion(),
                BannerAdsBig(image:data.data!.side_ad_1!.media!.thumbnail ,),
                HeighLightNews(cover: data.data!.cover7),
                HeighLightNews(cover: data.data!.cover8),
                HeighLightNewsTwo(cover: data.data!.cover9),
                HeighLightNewsTwo(cover: data.data!.cover10),
                BannerAdsBig(image:data.data!.side_ad_2!.media!.thumbnail ,),


                CategoryNews1(category: "পবাংলাদেশ ইনসাইড ",lan: 1,menuId: 1,),
                // CategoryNews2(category: "ইনসাইড পলিটিক্স  ",lan: 1,menuId: 2,),
                // CategoryNews3(category: "ইনসাইডার এক্সক্লুসিভ  ",lan: 1,menuId: 3,),




                NewsCardWithTitleSortDiscrip(),
                NewsCardWithTitle(),
                NewsCardWithTitle(),
                NewsCardWithTitle(),
                NewsCardWithTitle(),
                NewsCardWithTitle(),
                TitleNewsCard(),
                TitleNewsCard(),
                TitleNewsCard(),
                TitleNewsCard(),
                TitleNewsCard(),
              ],
            ),
          ),
        );
      },
    );
  }
}
