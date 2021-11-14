import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';

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
                    children: [
                      Text(cover!.headline.toString(),style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800),textAlign: TextAlign.start,),
                      Text(cover!.short_description.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
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
