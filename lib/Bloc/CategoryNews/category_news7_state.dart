part of 'category_news7_cubit.dart';

@immutable
abstract class CategoryNews7State {}

class CategoryNews7Initial extends CategoryNews7State {}
class HomeCatnewsData7 extends CategoryNews7State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData7({this.categoryNewsResponse});
}