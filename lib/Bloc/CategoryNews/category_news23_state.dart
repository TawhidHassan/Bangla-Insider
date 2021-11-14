part of 'category_news23_cubit.dart';

@immutable
abstract class CategoryNews23State {}

class CategoryNews23Initial extends CategoryNews23State {}
class HomeCatnewsData23 extends CategoryNews23State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData23({this.categoryNewsResponse});
}