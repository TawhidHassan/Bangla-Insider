part of 'category_news9_cubit.dart';

@immutable
abstract class CategoryNews9State {}

class CategoryNews9Initial extends CategoryNews9State {}
class HomeCatnewsData9 extends CategoryNews9State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData9({this.categoryNewsResponse});
}