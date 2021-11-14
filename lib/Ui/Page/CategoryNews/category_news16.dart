import 'package:banglainsider/Bloc/CategoryNews/category_news16_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news2_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news3_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news4_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news5_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news6_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news_cubit.dart';
import 'package:banglainsider/Bloc/Home/home_cubit.dart';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithDetailsBig/news_card_big_With_deatils_image_top.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithDetailsBig/news_card_big_without_image.dart';
import 'package:banglainsider/Ui/Widgets/HighlightNews/high_light_news_big_iamge.dart';
import 'package:banglainsider/Ui/Widgets/InsiderMindNews/insider_mind_news.dart';
import 'package:banglainsider/Ui/Widgets/InsiderMindNews/text_news.dart';
import 'package:banglainsider/Ui/Widgets/Simmer/home_category_simmer.dart';
import 'package:banglainsider/Ui/Widgets/SportsNews/sports_news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryNews16 extends StatefulWidget {
  int? menuId;
  int? lan;
  String? category;

  FooterContent?footerContent;
  CategoryNews16({this.menuId, this.lan,this.category,this.footerContent});

  @override
  _CategoryNews16State createState() => _CategoryNews16State();
}

class _CategoryNews16State extends State<CategoryNews16> {
  @override
  void initState() {
    // TODO: implement initState
    print("running cattt");
    BlocProvider.of<CategoryNews16Cubit>(context).categoryNewsData1(widget.menuId,widget.lan);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryNews16Cubit, CategoryNews16State>(
      builder: (context, state) {
        if(state is !HomeCatnewsData16){
          return HomeCategoryShimer();
        }
        final data=(state as HomeCatnewsData16).categoryNewsResponse;
        return data!.data!.content!.isEmpty?Container(): Container(
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

              data.data!.feature_news ==null? Container():
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(12),
                child: Stack(
                  children: [
                    Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(BASE_URL_IMAGE+data.data!.feature_news!.media!.thumbnail.toString(),fit:BoxFit.fill),
                    ),
                    Positioned(
                        top: 300,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, NEWS_DETAILS_PAGE,arguments: {
                                  'cover':data.data!.feature_news!,
                                  'footerContent':widget.footerContent
                                });
                              },
                              child: Text(data.data!.feature_news!.headline.toString(),style: TextStyle(fontSize: 19,fontWeight: FontWeight.w800,color: Colors.white),textAlign: TextAlign.start,)),
                        )
                    ),

                  ],
                ),
              ),


              SizedBox(
                height: MediaQuery.of(context).size.height*0.3,
                child:GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.all(8.0),
                  crossAxisSpacing: 1.0,
                  children: data.data!.content!.sublist(0,2).map((content) =>
                       TextNews(cover: content,footerContent: widget.footerContent,)
                  ).toList(),
                ),
              ),

              Container(
                child: Column(
                  children: data.data!.content!.sublist(2,data.data!.content!.length).map((content) =>
                      NewsCardWithoutImage(cover:content ,footerContent: widget.footerContent,)

                  ).toList(),
                ),
              ),

              Container(
                margin: EdgeInsets.all(12),
                height: 130,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFc2dff1),
                child: Center(
                  child: Text("Add"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
