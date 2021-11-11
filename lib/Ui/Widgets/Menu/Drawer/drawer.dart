import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Data/Menus/Menu.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final List<Menu>? menus;

  const CustomDrawer({Key? key, this.menus}) : super(key: key);
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
                    ListTile(
                      title: Text(menu.name.toString(),style: TextStyle(fontWeight: FontWeight.w800),),
                    ),
                ).toList()
            ),
          )
        ],
      ),
    );
  }
}
