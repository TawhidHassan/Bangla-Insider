import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:flutter/material.dart';

class NewsCardBigDetailsImageTop extends StatefulWidget {
  @override
  _NewsCardBigDetailsImageTopState createState() => _NewsCardBigDetailsImageTopState();
}

class _NewsCardBigDetailsImageTopState extends State<NewsCardBigDetailsImageTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      margin: EdgeInsets.only(top: 16,right: 16,left: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
            height: 160,
          ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text("পুলিশ বাহিনীতে শৃখলা ভঙ্গ করলে কঠোর ব্যবস্থাঃ আইজিপি",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800),textAlign: TextAlign.start,),
            ),
          Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("উপজেলা পর্যায়ে বিভিন্ন দপ্তরের কাগজপত্র ও নথি অনুমোদনের জন্য উপজেলা নির্বাহী কর্মকর্তার (ইউএনও) মাধ্যমে উপজেলা....",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
                  Text("আরো পড়ুন...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.blueAccent),textAlign: TextAlign.start,),
                ],
              )
            ),

        ],
      ),
    );
  }
}
