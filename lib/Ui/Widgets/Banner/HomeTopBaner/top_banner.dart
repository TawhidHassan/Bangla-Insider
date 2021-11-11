import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      color: Color(0xFFd9ddf7),
      margin: EdgeInsets.all(8),
      height: 90,
      child:Image.asset('assets/images/logo.png'),
    );
  }
}
