import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/Media/Media.dart';
import 'package:flutter/material.dart';
class HotNews extends StatelessWidget {
  Cover? cover;


  HotNews({this.cover});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("[ কভার স্টোরি ]",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28),),
          Text(cover!.headline.toString(),style: TextStyle(fontWeight: FontWeight.w900,color:Colors.black,fontSize: 58),),
          Text(cover!.short_description.toString(),style: TextStyle(fontWeight: FontWeight.w400,color:Colors.black,fontSize: 20),),
          Text("আরো পড়ুন...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.blueAccent),textAlign: TextAlign.start,),

        ],
      ),
    );
  }
}
