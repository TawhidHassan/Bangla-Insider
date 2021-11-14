part of 'category_news_cubit.dart';

@immutable
abstract class CategoryNewsState {}

class CategoryNewsInitial extends CategoryNewsState {}
class HomeCatnewsData1 extends CategoryNewsState{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData1({this.categoryNewsResponse});
}

