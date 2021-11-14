import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';

class NewsCardBigImageWithoutHeadlineTop extends StatelessWidget {
  Cover? cover;
  FooterContent?footerContent;

  NewsCardBigImageWithoutHeadlineTop({this.cover,this.footerContent});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      margin: EdgeInsets.only(top: 16,right: 16,left: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(

        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: 260,
            child: Image.network(BASE_URL_IMAGE+cover!.media!.thumbnail.toString(),fit:BoxFit.cover),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
              child:Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cover!.short_description.toString(),style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
                  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, NEWS_DETAILS_PAGE,arguments: {
                          'cover':cover,
                          'footerContent':footerContent
                        });
                      },
                      child: Text("আরো পড়ুন...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.blueAccent),textAlign: TextAlign.start,)
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }
}
