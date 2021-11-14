part of 'category_news3_cubit.dart';

@immutable
abstract class CategoryNews3State {}

class CategoryNews3Initial extends CategoryNews3State {}


class HomeCatnewsData3 extends CategoryNews3State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData3({this.categoryNewsResponse});
}