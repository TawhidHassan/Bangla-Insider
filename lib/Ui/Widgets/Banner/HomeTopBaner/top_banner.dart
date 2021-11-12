import 'package:banglainsider/Constants/String/string.dart';
import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  String? image;

  TopBanner({this.image});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      color: Color(0xFFd9ddf7),
      margin: EdgeInsets.all(8),
      height: 90,
      child:Image.network(BASE_URL_IMAGE+image!,fit:BoxFit.fill),
    );
  }
}
