part of 'category_news16_cubit.dart';

@immutable
abstract class CategoryNews16State {}

class CategoryNews16Initial extends CategoryNews16State {}
class HomeCatnewsData16 extends CategoryNews16State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData16({this.categoryNewsResponse});
}