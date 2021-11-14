part of 'category_news6_cubit.dart';

@immutable
abstract class CategoryNews6State {}

class CategoryNews6Initial extends CategoryNews6State {}
class HomeCatnewsData6 extends CategoryNews6State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData6({this.categoryNewsResponse});
}