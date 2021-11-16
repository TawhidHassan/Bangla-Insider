import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class NewsCardWithTitleSortDiscrip extends StatefulWidget {
  Cover? cover;
  FooterContent?footerContent;

  NewsCardWithTitleSortDiscrip({this.cover,this.footerContent});
  @override
  _NewsCardWithTitleSortDiscripState createState() => _NewsCardWithTitleSortDiscripState();
}

class _NewsCardWithTitleSortDiscripState extends State<NewsCardWithTitleSortDiscrip> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 16,right: 16,left: 16),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Divider(
              height: 20,
              thickness: 2,
              color: devider,
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      width: 150,
                      color: backColor,
                      height: 90,
                      child: Image.network(BASE_URL_IMAGE+widget.cover!.media!.thumbnail.toString(),fit:BoxFit.contain),
                  ),
                ),
                Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, NEWS_DETAILS_PAGE,arguments: {
                              'cover':widget.cover!,
                              'footerContent':widget.footerContent
                            });
                          },
                          child: Text(widget.cover!.headline.toString(),style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800),textAlign: TextAlign.start,)),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Html(
                  style: {
                    "body": Style(
                        fontSize: FontSize(18.0),
                        color: Colors.black
                    ),
                  },
                  shrinkWrap: true,
                  data:widget.cover!.short_description.toString()
              ),
            ),
          ],
        )
    );
  }
}
