import 'package:banglainsider/Bloc/Home/home_cubit.dart';
import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
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
import 'package:percent_indicator/linear_percent_indicator.dart';

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
                CustomTabView(),
                BrakingNews(),
                TopBanner(),
                HotNews(),
                HeighLightNews(),
                HeighLightNews(),
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
                Container(
                  margin: EdgeInsets.all(12),
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFc2dff1),
                  child: Center(
                    child: Text("Add"),
                  ),
                ),
                HeighLightNewsTwo(),
                HeighLightNewsTwo(),
                PublicOpenion(),
                Container(
                  margin: EdgeInsets.all(12),
                  height: 280,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFc2dff1),
                  child: Center(
                    child: Text("Add"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("পবাংলাদেশ ইনসাইড ",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28),),
                      const Divider(
                        thickness: 2, // thickness of the line
                        indent: 1, // empty space to the leading edge of divider.
                        endIndent: 1, // empty space to the trailing edge of the divider.
                        color:Color(0xFF007DC4), // The color to use when painting the line.
                        height: 20, // The divider's height extent.
                      ),
                    ],
                  ),
                ),
                NewsCardWithoutImage(),
                NewsCardWithoutImage(),
                NewsCardWithoutImage(),
                FestonBanner(),
                NewsCardWithoutImage(),
                NewsCardWithoutImage(),
                Container(
                  margin: EdgeInsets.all(12),
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFc2dff1),
                  child: Center(
                    child: Text("Add"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ইনসাইড পলিটিক্স  ",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28),),
                      const Divider(
                        thickness: 2, // thickness of the line
                        indent: 1, // empty space to the leading edge of divider.
                        endIndent: 1, // empty space to the trailing edge of the divider.
                        color:Color(0xFF007DC4), // The color to use when painting the line.
                        height: 20, // The divider's height extent.
                      ),
                    ],
                  ),
                ),
                NewsCardWithoutImage(),
                NewsCardBigDetailsImageTop(),
                NewsCardBigDetailsImageTop(),
                Container(
                  margin: EdgeInsets.all(12),
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFc2dff1),
                  child: Center(
                    child: Text("Add"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ইনসাইডার এক্সক্লুসিভ ",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28),),
                      const Divider(
                        thickness: 2, // thickness of the line
                        indent: 1, // empty space to the leading edge of divider.
                        endIndent: 1, // empty space to the trailing edge of the divider.
                        color:Color(0xFF007DC4), // The color to use when painting the line.
                        height: 20, // The divider's height extent.
                      ),
                    ],
                  ),
                ),
                HeighLightNewsBigImage(),
                HeighLightNewsBigImage(),
                NewsCardBigDetailsImageTop(),
                NewsCardBigDetailsImageTop(),
                NewsCardBigDetails(),
                NewsCardWithoutImage(),
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
