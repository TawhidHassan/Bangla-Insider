import 'package:banglainsider/Bloc/Home/home_cubit.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:banglainsider/Data/Menus/Menu.dart';
import 'package:banglainsider/Data/Weather/Weather.dart';
import 'package:banglainsider/Ui/Page/CategoryNews/Footer.dart';
import 'package:banglainsider/Ui/Page/CategoryNews/category_news9.dart';
import 'package:banglainsider/Ui/Page/CategoryNews/weather.dart';
import 'package:banglainsider/Ui/Widgets/Menu/Drawer/drawer.dart';
import 'package:banglainsider/Ui/Widgets/TabView/HomeCustomTabView/tabview_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';



class CatNews extends StatefulWidget {

  final List<Menu>? menu;
  final List<Menu>? submenu;
  final FooterContent? footerContent;
  final Weather? weather;
  final int? menuId;

  const CatNews({Key? key, this.menu,this.submenu, this.footerContent, this.menuId,this.weather}) : super(key: key);


  @override
  _CatNewsState createState() => _CatNewsState();
}

class _CatNewsState extends State<CatNews> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<HomeCubit>(context).homeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
              color: Colors.blueAccent
          ),
          backgroundColor: Colors.white,
          title:InkWell(
            onTap: (){
              Navigator.pushNamed(context, HOME_PAGE);
            },
            child: Center(
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
        ),
        drawer:CustomDrawer(menus: widget.menu,),
        body: Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(bottom: 30),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [

              widget.submenu !=null? widget.submenu!.isEmpty?Container(): CustomTabView(menus: widget.submenu,weather: widget.weather,footerContent: widget.footerContent ,):Container(),
              CategoryNews9(category: "ইনসাইড আর্টিকেল   ",lan: 1,menuId: widget.menuId,footerContent: widget.footerContent),



              WeatherWidget(category: "ইনসাইড ওয়েদার     ",weather: widget.weather,),


              Footer(footerContent: widget.footerContent,),


            ],
          ),
        ),
      ),
    );
  }
}
