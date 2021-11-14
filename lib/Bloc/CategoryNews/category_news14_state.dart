part of 'category_news14_cubit.dart';

@immutable
abstract class CategoryNews14State {}

class CategoryNews14Initial extends CategoryNews14State {}
class HomeCatnewsData14 extends CategoryNews14State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData14({this.categoryNewsResponse});
}