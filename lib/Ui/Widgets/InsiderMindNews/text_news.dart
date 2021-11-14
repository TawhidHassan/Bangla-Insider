import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';

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
                child:Text(cover!.headline.toString().substring(0,cover!.headline.toString().length>30?30:20),style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800),textAlign: TextAlign.start,),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Text(cover!.short_description.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),textAlign: TextAlign.start,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
