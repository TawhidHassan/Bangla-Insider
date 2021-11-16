import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:banglainsider/Data/Menus/Menu.dart';
import 'package:banglainsider/Data/Weather/Weather.dart';
import 'package:flutter/material.dart';

class CustomTabView extends StatelessWidget {
  final List<Menu>? menus;
  final Weather? weather;
  final FooterContent? footerContent;

  const CustomTabView({Key? key, this.menus, this.weather, this.footerContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: [
            Flex(direction: Axis.horizontal,
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
                    child: Container(
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.all(8),
                        child: Text(menu.name.toString(),style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black,fontSize: 20))
                    ),
                  ),

              ).toList()

            )

          ],
        )
    );
  }
}
