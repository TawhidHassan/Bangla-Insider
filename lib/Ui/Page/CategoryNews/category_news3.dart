import 'package:banglainsider/Bloc/CategoryNews/category_news2_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news3_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news_cubit.dart';
import 'package:banglainsider/Bloc/Home/home_cubit.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithDetailsBig/news_card_big_With_deatils_image_top.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithDetailsBig/news_card_big_without_image.dart';
import 'package:banglainsider/Ui/Widgets/HighlightNews/high_light_news_big_iamge.dart';
import 'package:banglainsider/Ui/Widgets/Simmer/home_category_simmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryNews3 extends StatefulWidget {
  int? menuId;
  int? lan;
  String? category;

  FooterContent?footerContent;
  CategoryNews3({this.menuId, this.lan,this.category,this.footerContent});
  @override
  _CategoryNews3State createState() => _CategoryNews3State();
}

class _CategoryNews3State extends State<CategoryNews3> {
  @override
  void initState() {
    // TODO: implement initState
    print("running cattt");
    BlocProvider.of<CategoryNews3Cubit>(context).categoryNewsData1(widget.menuId,widget.lan);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryNews3Cubit, CategoryNews3State>(
      builder: (context, state) {
        if(state is !HomeCatnewsData3){
          return HomeCategoryShimer();
        }
        final data=(state as HomeCatnewsData3).categoryNewsResponse;
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

              data.data!.feature_news ==null? Container(): NewsCardBigDetailsImageTop(cover: data.data!.feature_news,footerContent: widget.footerContent,),

              Container(
                child: Column(
                  children: data.data!.content!.map((content) =>
                      HeighLightNewsBigImage(cover:content,footerContent: widget.footerContent,),
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
