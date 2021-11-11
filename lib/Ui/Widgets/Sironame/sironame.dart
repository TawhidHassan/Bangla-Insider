import 'package:flutter/material.dart';

class Sironame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("দুর্গাপূজা শুধু হিন্দু সম্প্রদায়ের উৎসবই নয়, এটি এখন সার্বজনীন উৎসব বলে জানিয়েছেন প্রধানমন্ত্রী শেখ হাসিনা।",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800),textAlign: TextAlign.center,),
          const Divider(
            thickness: 2, // thickness of the line
            indent: 20, // empty space to the leading edge of divider.
            endIndent: 20, // empty space to the trailing edge of the divider.
            color: Color(0xff6c757d), // The color to use when painting the line.
            height: 20, // The divider's height extent.
          ),

        ],
      ),
    );
  }
}
