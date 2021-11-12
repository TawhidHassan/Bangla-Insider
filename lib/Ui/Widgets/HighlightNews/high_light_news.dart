import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/Media/Media.dart';
import 'package:flutter/material.dart';

class HeighLightNews extends StatelessWidget {
  Cover? cover;
  HeighLightNews({this.cover});
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(12),
      color: Color(0xFFc4e1f1),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width:100,
                height: 100,
                margin: EdgeInsets.only(right: 8),
                child: Image.network(BASE_URL_IMAGE+cover!.media!.thumbnail.toString(),fit: BoxFit.fill,),
              ),
              Expanded(
                child:Text(cover!.headline.toString(),style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800),textAlign: TextAlign.start,),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cover!.short_description.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
              Text("আরো পড়ুন...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.blueAccent),textAlign: TextAlign.start,),
            ],
          )
        ],
      ),
    );
  }
}
