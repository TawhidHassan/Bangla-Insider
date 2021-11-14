import 'package:banglainsider/Bloc/CategoryNews/category_news2_cubit.dart';
import 'package:banglainsider/Data/Weather/Weather.dart';

import 'package:banglainsider/Ui/Widgets/Simmer/home_category_simmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherWidget extends StatefulWidget {
  Weather? weather;
  String? category;


  WeatherWidget({this.weather, this.category});

  @override
  _WeatherWidgetState createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  @override
  void initState() {
    // TODO: implement initState
    print("running cattt");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.category.toString(),style: TextStyle(fontWeight: FontWeight.w700,color: Color(
                    0xFF74BEE8),fontSize: 28),),
                const Divider(
                  thickness: 2, // thickness of the line
                  indent: 1, // empty space to the leading edge of divider.
                  endIndent: 1, // empty space to the trailing edge of the divider.
                  color:Color(0xFF007DC4), // The color to use when painting the line.
                  height: 20, // The divider's height extent.
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 20),
            child: Text("আজ",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28,),textAlign: TextAlign.start,),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.cloud_outlined,color: Color(0xFF007DC4),size: 100,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.weather!.temperature.toString(),style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28,),textAlign: TextAlign.start,),
                      Text("Temperature",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28,),textAlign: TextAlign.start,),
                      Text(widget.weather!.precipitation.toString()+" %",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28,),textAlign: TextAlign.start,),
                      Text("Precipitation",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28,),textAlign: TextAlign.start,),
                      Text(widget.weather!.wind.toString(),style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28,),textAlign: TextAlign.start,),
                      Text("Wind",style: TextStyle(fontWeight: FontWeight.w700,color: Color(0xFF007DC4),fontSize: 28,),textAlign: TextAlign.start,),
                    ],
                  ),
                ],
              )
          )

        ],
      ),
    );
  }
}
