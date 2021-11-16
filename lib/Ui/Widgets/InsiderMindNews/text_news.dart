import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class TextNews extends StatelessWidget {
  Cover? cover;
  FooterContent?footerContent;

  TextNews({this.cover,this.footerContent});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, NEWS_DETAILS_PAGE,arguments: {
          'cover':cover,
          'footerContent':footerContent
        });
      },
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 10),
                child:Text(cover!.headline.toString().substring(0,cover!.headline.toString().length>30?30:20),style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800),textAlign: TextAlign.start,),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child:Html(
                    style: {
                      "body": Style(
                          fontSize: FontSize(18.0),
                          color: Colors.black
                      ),
                    },
                    shrinkWrap: true,
                    data:cover!.short_description.toString()
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
