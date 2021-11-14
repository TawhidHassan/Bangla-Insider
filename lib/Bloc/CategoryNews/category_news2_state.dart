part of 'category_news2_cubit.dart';

@immutable
abstract class CategoryNews2State {}

class CategoryNews2Initial extends CategoryNews2State {}


class HomeCatnewsData2 extends CategoryNews2State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData2({this.categoryNewsResponse});
}
