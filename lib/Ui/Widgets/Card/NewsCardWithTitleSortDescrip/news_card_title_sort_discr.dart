import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:flutter/material.dart';

class NewsCardWithTitleSortDiscrip extends StatefulWidget {
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
                      child: Image.asset('assets/images/smalimage.jpg')
                  ),
                ),
                Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Text("জেমি ডে-কে সরিয়ে সাফ ফুটবলে বাংলাদেশের দায়িত্বে ব্রুজোন",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800),textAlign: TextAlign.start,),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text("উপজেলা পর্যায়ে বিভিন্ন দপ্তরের কাগজপত্র ও নথি অনুমোদনের জন্য উপজেলা নির্বাহী কর্মকর্তার (ইউএনও) মাধ্যমে উপজেলা....",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
            ),
          ],
        )
    );
  }
}
