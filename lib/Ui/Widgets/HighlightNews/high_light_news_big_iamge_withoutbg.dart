import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HeighLightNewsBigImageWithOutBg extends StatelessWidget {
  Cover? cover;
  FooterContent?footerContent;

  HeighLightNewsBigImageWithOutBg({this.cover,this.footerContent});
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.pushNamed(context, NEWS_DETAILS_PAGE,arguments: {
          'cover':cover,
          'footerContent':footerContent
        });
      },
      child: Container(
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
                        Text(cover!.headline.toString(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800),textAlign: TextAlign.start,),
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

                      ],
                    )
                )

              ],
            ),

          ],
        ),
      ),
    );
  }
}
