import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:flutter/material.dart';

class NewsCardWithTitle extends StatefulWidget {
  @override
  _NewsCardWithTitleState createState() => _NewsCardWithTitleState();
}

class _NewsCardWithTitleState extends State<NewsCardWithTitle> {
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
        ],
      )
    );
  }
}
