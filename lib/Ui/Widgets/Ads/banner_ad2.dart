import 'package:banglainsider/Constants/String/string.dart';
import 'package:flutter/material.dart';

class BannerAdsBig extends StatelessWidget {
  String? image;

  BannerAdsBig({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Image.network(BASE_URL_IMAGE+image!,fit:BoxFit.contain),
    );
  }
}
