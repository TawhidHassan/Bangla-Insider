part of 'category_news12_cubit.dart';

@immutable
abstract class CategoryNews12State {}

class CategoryNews12Initial extends CategoryNews12State {}
class HomeCatnewsData12 extends CategoryNews12State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData12({this.categoryNewsResponse});
}