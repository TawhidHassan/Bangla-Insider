import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:flutter/material.dart';

class TitleNewsCard extends StatefulWidget {
  @override
  _TitleNewsCardState createState() => _TitleNewsCardState();
}

class _TitleNewsCardState extends State<TitleNewsCard> {
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
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text("উপজেলা পর্যায়ে বিভিন্ন দপ্তরের কাগজপত্র ও নথি অনুমোদনের জন্য উপজেলা নির্বাহী কর্মকর্তার (ইউএনও) মাধ্যমে উপজেলা....",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800),textAlign: TextAlign.start,),
            ),
          ],
        )
    );
  }
}
