import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class NewsCardBigImageDetailsImageTop extends StatelessWidget {
  Cover? cover;
  FooterContent?footerContent;

  NewsCardBigImageDetailsImageTop({this.cover,this.footerContent});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      margin: EdgeInsets.only(top: 16,right: 16,left: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: 260,
            child: Image.network(BASE_URL_IMAGE+cover!.media!.thumbnail.toString(),fit:BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 12,right: 4),
            child: Text(cover!.headline.toString(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Html(
                      style: {
                        "body": Style(
                            fontSize: FontSize(18.0),
                            color: Colors.black
                        ),
                      },
                      shrinkWrap: true,
                      data: cover!.short_description.toString()
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
              )
          ),

        ],
      ),
    );
  }
}
