part of 'category_news11_cubit.dart';

@immutable
abstract class CategoryNews11State {}

class CategoryNews11Initial extends CategoryNews11State {}
class HomeCatnewsData11 extends CategoryNews11State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData11({this.categoryNewsResponse});
}