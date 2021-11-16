import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:banglainsider/Data/Menus/Menu.dart';
import 'package:banglainsider/Data/Weather/Weather.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final List<Menu>? menus;
  final Weather? weather;
  final FooterContent? footerContent;
  const CustomDrawer({Key? key, this.menus, this.weather, this.footerContent}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 65.0,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: kPrimaryColorx,
                ),
                child: Image.asset('assets/images/white_logo.png'),
              ),
            ),
          ),
          SizedBox(height: 8,),
          Container(
            height: MediaQuery.of(context).size.height*0.9,
            child: ListView(
                padding: EdgeInsets.zero,
                children: menus!.map((menu) =>
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, NEWS_CAT_PAGE,arguments: {
                          "footerContent":footerContent,
                          "weather":weather,
                          "menuId":menu.id,
                          "menu":menus,
                          "submenu":menu.child_menu
                        });
                      },
                      child: ListTile(
                        title: Text(menu.name.toString(),style: TextStyle(fontWeight: FontWeight.w800),),
                      ),
                    ),
                ).toList()
            ),
          )
        ],
      ),
    );
  }
}
