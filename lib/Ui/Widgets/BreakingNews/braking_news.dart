
import 'package:banglainsider/Ui/Widgets/FloatingText/floating_text.dart';
import 'package:flutter/material.dart';

class BrakingNews extends StatelessWidget {

  String? text;

  BrakingNews({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF97cae7),
      width: MediaQuery.of(context).size.width,
      height:50,
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 2),
      margin: EdgeInsets.all(6),
      child: Row(
        children: [
          Expanded(
              flex:4,
              child: Text("ব্রেকিং নিউজ ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)
          ),
          Expanded(
            flex:10,
            child: ScrollingText(
              text: text.toString(),
              textStyle: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
