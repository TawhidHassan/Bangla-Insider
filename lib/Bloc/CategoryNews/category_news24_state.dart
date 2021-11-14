part of 'category_news24_cubit.dart';

@immutable
abstract class CategoryNews24State {}

class CategoryNews24Initial extends CategoryNews24State {}
class HomeCatnewsData24 extends CategoryNews24State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData24({this.categoryNewsResponse});
}