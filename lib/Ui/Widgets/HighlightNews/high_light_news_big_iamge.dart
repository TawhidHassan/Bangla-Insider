import 'package:flutter/material.dart';

class HeighLightNewsBigImage extends StatelessWidget {
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
                  color: Colors.grey,
                  height: 200,
                  margin: EdgeInsets.only(right: 8),
                ),
              ),
              Expanded(
                  child:Column(
                    children: [
                      Text("পুলিশ বাহিনীতে শৃখলা ভঙ্গ করলে কঠোর ব্যবস্থাঃ আইজিপি",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800),textAlign: TextAlign.start,),
                      Text("করোনার এই করোনার এই কঠিন সময়ে পরোপকারের মহান ব্রত নিয়ে  কঠিন সময়ে পরোপকারের মহান ব্রত  ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
                      Text("আরো পড়ুন...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.blueAccent),textAlign: TextAlign.start,),

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
