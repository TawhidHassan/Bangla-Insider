import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class NewsCardBiImageTop extends StatelessWidget {
  Cover? cover;
  FooterContent?footerContent;

  NewsCardBiImageTop({this.cover,this.footerContent});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      margin: EdgeInsets.only(top: 16,right: 16,left: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 360,
            child: Image.network(BASE_URL_IMAGE+cover!.media!.thumbnail.toString(),fit:BoxFit.fill),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, NEWS_DETAILS_PAGE,arguments: {
                    'cover':cover,
                    'footerContent':footerContent
                  });
                },
                child: Html(
                    style: {
                      "body": Style(
                          fontSize: FontSize(18.0),
                          color: Colors.black
                      ),
                    },
                    shrinkWrap: true,
                    data: cover!.headline.toString()
                ),

            ),
          ),


        ],
      ),
    );
  }
}
