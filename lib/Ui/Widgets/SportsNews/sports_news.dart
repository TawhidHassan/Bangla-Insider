import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';

class SportsNews extends StatelessWidget {
  Cover? cover;
  FooterContent?footerContent;

  SportsNews({this.cover,this.footerContent});
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(
                  child:Column(
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, NEWS_DETAILS_PAGE,arguments: {
                              'cover':cover,
                              'footerContent':footerContent
                            });
                          },
                          child: Text(cover!.headline.toString(),style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800),textAlign: TextAlign.start,)),
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                        NetworkImage(BASE_URL_IMAGE+cover!.media!.thumbnail.toString()),
                        backgroundColor: Colors.transparent,
                      )


                    ],
                  )
              )

            ],
          ),

        ],
      ),
    );
  }
}
