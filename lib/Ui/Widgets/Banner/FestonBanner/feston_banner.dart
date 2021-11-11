import 'package:flutter/material.dart';

class FestonBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width*0.7,
        margin: EdgeInsets.all(12),
        child: Stack(
          children: [
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width*0.7,
              color: Color(0xFFc2dff1),
            ),
            Positioned(
                top: 400,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("দুর্গাপূজা শুধু হিন্দু সম্প্রদায়ের উৎসবই নয়, এটি এখন সার্বজনীন উৎসব বলে জানিয়েছেন প্রধানমন্ত্রী শেখ হাসিনা।",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800,color: Colors.white),textAlign: TextAlign.center,),
                )
            ),

          ],
        ),
      ),
    );
  }
}
