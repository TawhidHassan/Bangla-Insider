import 'package:banglainsider/Bloc/CategoryNews/category_news2_cubit.dart';
import 'package:banglainsider/Bloc/CategoryNews/category_news_cubit.dart';
import 'package:banglainsider/Bloc/Home/home_cubit.dart';
import 'package:banglainsider/Data/FooterContent/FooterContent.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithDetailsBig/news_card_big_With_deatils_image_top.dart';
import 'package:banglainsider/Ui/Widgets/Card/NewsCardWithDetailsBig/news_card_big_without_image.dart';
import 'package:banglainsider/Ui/Widgets/Simmer/home_category_simmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryNews2 extends StatefulWidget {
  int? menuId;
  int? lan;
  String? category;
  FooterContent?footerContent;
  CategoryNews2({this.menuId, this.lan,this.category,this.footerContent});
  @override
  _CategoryNews2State createState() => _CategoryNews2State();
}

class _CategoryNews2State extends State<CategoryNews2> {
  @override
  void initState() {
    // TODO: implement initState
    print("running cattt");
    BlocProvider.of<CategoryNews2Cubit>(context).categoryNewsData1(widget.menuId,widget.lan);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryNews2Cubit, CategoryNews2State>(
      builder: (context, state) {
        if(state is !HomeCatnewsData2){
          return HomeCategoryShimer();
        }
        final data=(state as HomeCatnewsData2).categoryNewsResponse;
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
