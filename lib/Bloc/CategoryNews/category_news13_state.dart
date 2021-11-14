part of 'category_news13_cubit.dart';

@immutable
abstract class CategoryNews13State {}

class CategoryNews13Initial extends CategoryNews13State {}
class HomeCatnewsData13 extends CategoryNews13State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData13({this.categoryNewsResponse});
}