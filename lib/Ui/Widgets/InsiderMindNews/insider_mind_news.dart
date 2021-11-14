import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';

class InsiderMindNews extends StatelessWidget {
  Cover? cover;
  FooterContent?footerContent;

  InsiderMindNews({this.cover,this.footerContent});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 160,
              child: Image.network(BASE_URL_IMAGE+cover!.media!.thumbnail.toString(),fit:BoxFit.cover),
            ),
          ),
          Expanded(
            child: Container(
              child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, NEWS_DETAILS_PAGE,arguments: {
                      'cover':cover,
                      'footerContent':footerContent
                    });
                  },
                  child: Text(cover!.headline.toString().substring(0,cover!.headline.toString().length>30?30:20),style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800),textAlign: TextAlign.start,)),
            ),
          ),
        ],
      ),
    );
  }
}
