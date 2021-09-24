import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithDetailsBig/news_card_big_With_deatils.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithTitle/news_card_with_title.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithTitleSortDescrip/news_card_title_sort_discr.dart';
import 'package:banglainsider/Ui/Widgets/Card/TitleCard/title_news_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title:Center(
            child: Image.asset('assets/images/white_logo.png'),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 16),
              child: InkWell(
                  onTap: (){

                  },
                  child: Icon(Icons.search,size: 30,)),
            )
          ],
          bottom: TabBar(
            tabs: [
              Text('প্রচ্ছদ',style: TextStyle(fontWeight: FontWeight.w800)),
              Text('প্রচ্ছদ',style: TextStyle(fontWeight: FontWeight.w800)),
              Text('প্রচ্ছদ',style: TextStyle(fontWeight: FontWeight.w800)),
              Text('প্রচ্ছদ',style: TextStyle(fontWeight: FontWeight.w800)),
              Text('প্রচ্ছদ',style: TextStyle(fontWeight: FontWeight.w800)),
              Text('প্রচ্ছদ',style: TextStyle(fontWeight: FontWeight.w800)),
            ],
          ),
        ),
        drawer:Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children:  <Widget>[
              Container(
                height: 65.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: kPrimaryColorx,
                  ),
                  child: Image.asset('assets/images/white_logo.png'),
                ),
              ),
              ListTile(
                title: Text('প্রচ্ছদ',style: TextStyle(fontWeight: FontWeight.w800),),
              ),
              ListTile(
                title: Text('বাংলাদেশ',style: TextStyle(fontWeight: FontWeight.w800)),
              ),
              ListTile(
                title: Text('অর্থ-বানিজ্য',style: TextStyle(fontWeight: FontWeight.w800)),
              ),ListTile(
                title: Text('বিশ্বজুড়ে',style: TextStyle(fontWeight: FontWeight.w800)),
              ),ListTile(
                title: Text('অর্থ-বানিজ্য',style: TextStyle(fontWeight: FontWeight.w800)),
              ),ListTile(
                title: Text('মতামত',style: TextStyle(fontWeight: FontWeight.w800)),
              ),ListTile(
                title: Text('বঙ্গবন্ধু',style: TextStyle(fontWeight: FontWeight.w800)),
              ),ListTile(
                title: Text('বিনোদন',style: TextStyle(fontWeight: FontWeight.w800)),
              ),ListTile(
                title: Text('সারাদেশ',style: TextStyle(fontWeight: FontWeight.w800)),
              ),
            ],
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(bottom: 30),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              NewsCardBigDetails(),
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
      ),
    );
  }
}
