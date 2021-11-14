import 'package:banglainsider/Constants/Colors/colors.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/Cover/Cover.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'CategoryNews/Footer.dart';

class NewsDetails extends StatelessWidget {
  Cover? cover;
  FooterContent? footerContent;

  NewsDetails({this.cover,this.footerContent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News details"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(cover!.headline.toString(),style: TextStyle(fontWeight: FontWeight.w900,color:Colors.black,fontSize: 24),),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Expanded(flex: 1,child: Image.asset('assets/images/Bangla.png',height: 50,),),
                    Expanded(flex: 6,child: Text("উপজেলা প্রতিনিধি, হাকিমপুর (দিনাজপুর) \n ১৬ অক্টোবর ২০২১, ১১:২০ এএম",style: TextStyle(fontWeight: FontWeight.w300,color:Colors.black,fontSize: 18),)),
                  ],
                )
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20,top: 10),
                child:  Row(
                  children: [
                    IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.black,size: 29,),
                        onPressed: () {

                        }
                    ),IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: FaIcon(FontAwesomeIcons.instagram,color: Colors.black,size: 29,),
                        onPressed: () {

                        }
                    ),IconButton(
                      // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: FaIcon(FontAwesomeIcons.twitter,color: Colors.black,size: 29,),
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
              const Divider(
                height: 20,
                thickness: 2,
                color: devider,
              ),
              Container(
                width:MediaQuery.of(context).size.width*0.9,
                height: 300,
                margin: EdgeInsets.only(right: 8),
                child: Image.network(BASE_URL_IMAGE+cover!.media!.thumbnail.toString(),fit: BoxFit.contain,),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(cover!.description.toString(),style: TextStyle(fontWeight: FontWeight.w300,color:Colors.black,fontSize: 18),),
              ),
              Footer(footerContent: footerContent,),
            ],
          ),
        ),
      ),
    );
  }
}
