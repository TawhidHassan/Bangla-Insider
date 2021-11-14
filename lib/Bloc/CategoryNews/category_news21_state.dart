part of 'category_news21_cubit.dart';

@immutable
abstract class CategoryNews21State {}

class CategoryNews21Initial extends CategoryNews21State {}
class HomeCatnewsData21 extends CategoryNews21State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData21({this.categoryNewsResponse});
}