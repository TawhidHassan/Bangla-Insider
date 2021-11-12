import 'package:banglainsider/Constants/String/string.dart';
import 'package:flutter/material.dart';

class BannerAds extends StatelessWidget {
  String? image;

  BannerAds({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      color: Color(0xFFc2dff1),
      child: Center(
        child: Image.network(BASE_URL_IMAGE+image!,fit:BoxFit.fill),
      ),
    );
  }
}
