import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HeighLightNewsBigImage extends StatelessWidget {
  Cover? cover;
  FooterContent?footerContent;

  HeighLightNewsBigImage({this.cover,this.footerContent});
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
              Expanded(
                child: Container(
                  width:200,
                  height: 200,
                  margin: EdgeInsets.only(right: 8),
                  child: Image.network(BASE_URL_IMAGE+cover!.media!.thumbnail.toString(),fit:BoxFit.cover),
                ),
              ),
              Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(cover!.headline.toString(),style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800),textAlign: TextAlign.start,),
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
                  )
              )

            ],
          ),

        ],
      ),
    );
  }
}
