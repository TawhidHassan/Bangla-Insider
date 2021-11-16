import 'package:banglainsider/Bloc/CategoryNews/category_news2_cubit.dart';
import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:banglainsider/Data/Weather/Weather.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:banglainsider/Ui/Widgets/Simmer/home_category_simmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Footer extends StatelessWidget {
  FooterContent? footerContent;


  Footer({this.footerContent});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColorx,
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              margin: EdgeInsets.only(left: 20,top: 20),

              child: Image.asset('assets/images/white_logo.png',fit: BoxFit.contain,height: 50,),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 20,top: 10),
              child:Html(
                style: {
                  "body": Style(
                      fontSize: FontSize(18.0),
                      color: Colors.white
                  ),
                },
                shrinkWrap: true,
                data: footerContent!.short_description.toString(),
              )
          ),
          ),
          SizedBox(height: 90,),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 25,top: 10),
            child:  Text("বাংলা ইনসাইডার",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),textAlign: TextAlign.start,),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 25,top: 10),
            child:  Text("বিজ্ঞাপন",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),textAlign: TextAlign.start,),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 25,top: 10),
            child:  Text("নীতিমালা",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),textAlign: TextAlign.start,),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 25,top: 10),
            child:  Text("গোপনীয়তার নীতি",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white),textAlign: TextAlign.start,),
          ),

          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 15,top: 10),
              child:  Row(
                children: [
                  IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.white,size: 29,),
                      onPressed: () {

                      }
                  ),IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.instagram,color: Colors.white,size: 29,),
                      onPressed: () {

                      }
                  ),IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.twitter,color: Colors.white,size: 29,),
                      onPressed: () {

                      }
                  ),IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.linkedin,color: Colors.white,size: 29,),
                      onPressed: () {

                      }
                  ),IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: FaIcon(FontAwesomeIcons.youtube,color: Colors.white,size: 29,),
                      onPressed: () {

                      }
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
            width: MediaQuery.of(context).size.width*0.8,
            margin: EdgeInsets.only(left:0,top: 10),
            height: 80,
            child: Image.asset('assets/images/apple.png',height: 80,),
          ),
          )
        ],
      ),
    );
  }
}

