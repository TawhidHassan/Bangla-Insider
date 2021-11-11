import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PublicOpenion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(12),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("পাবলিক অপিনিয়ন ",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28),),
          Text("হজরত শাহজালাল আন্তর্জাতিক বিমানবন্দরের কার্গো ভিলেজের দুটি এক্সপ্লোসিভ ডিটেকশন স্ক্যানার (ইডিএস) নষ্ট। স্বয়ংক্রিয় পদ্ধতির বিপরীতে ডগ স্কোয়াডের চারটি কুকুর দিয়ে কার্গোর কাজ চলছে",style: TextStyle(fontWeight: FontWeight.w400,color:Colors.black,fontSize: 19),),
          SizedBox(height: 8,),
          LinearPercentIndicator(
            width: MediaQuery.of(context).size.width*0.8,
            center:Text("Yes") ,
            animation: true,
            animationDuration: 2000,
            lineHeight: 30.0,
            percent:0.8,
            backgroundColor: Color(0xFfc4e1f1),
            progressColor: Colors.blue,
          ),
          SizedBox(height: 8,),
          LinearPercentIndicator(
            width: MediaQuery.of(context).size.width*0.8,
            center:Text("No") ,
            animation: true,
            animationDuration: 2000,
            lineHeight: 30.0,
            percent:0.8,
            backgroundColor: Color(0xFfc4e1f1),
            progressColor: Colors.blue,
          ),
          SizedBox(height: 8,),
          LinearPercentIndicator(
            width: MediaQuery.of(context).size.width*0.8,
            center:Text("Nothing") ,
            animation: true,
            animationDuration: 2000,
            lineHeight: 30.0,
            percent:0.8,
            backgroundColor: Color(0xFfc4e1f1),
            progressColor: Colors.blue,
          ),

        ],
      ),
    );
  }
}
