import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HeighLightNewsCircleImage extends StatelessWidget {
  Cover? cover;
  FooterContent?footerContent;

  HeighLightNewsCircleImage({this.cover,this.footerContent});
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
                flex: 1,
                  child:ClipOval(
                    child: Image.network(
                      BASE_URL_IMAGE+cover!.media!.thumbnail.toString(),
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),




              ),
              SizedBox(width: 8,),
              Expanded(
                flex: 3,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cover!.headline.toString(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
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
                          child: Text("আরো পড়ুন...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.blueAccent),textAlign: TextAlign.start,)
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
