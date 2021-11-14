part of 'category_news18_cubit.dart';

@immutable
abstract class CategoryNews18State {}

class CategoryNews18Initial extends CategoryNews18State {}
class HomeCatnewsData18 extends CategoryNews18State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData18({this.categoryNewsResponse});
}