import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
