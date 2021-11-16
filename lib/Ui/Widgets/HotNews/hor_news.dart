import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:banglainsider/Data/Media/Media.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
class HotNews extends StatelessWidget {
  Cover? cover;
  FooterContent?footerContent;

  HotNews({this.cover,this.footerContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("[ কভার স্টোরি ]",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(cover!.headline.toString(),style: TextStyle(fontWeight: FontWeight.w900,color:Colors.black,fontSize: 58),),
          ),
          Html(
              style: {
                "body": Style(
                    fontSize: FontSize(18.0),
                    color: Colors.black
                ),
              },
              shrinkWrap: true,
              data:cover!.short_description.toString()
          ),
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, NEWS_DETAILS_PAGE,arguments: {
                  'cover':cover,
                  'footerContent':footerContent
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("আরো পড়ুন...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.blueAccent),textAlign: TextAlign.start,),
              )
          ),

        ],
      ),
    );
  }
}
