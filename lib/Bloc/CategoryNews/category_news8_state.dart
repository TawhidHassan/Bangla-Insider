part of 'category_news8_cubit.dart';

@immutable
abstract class CategoryNews8State {}

class CategoryNews8Initial extends CategoryNews8State {}
class HomeCatnewsData8 extends CategoryNews8State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData8({this.categoryNewsResponse});
}