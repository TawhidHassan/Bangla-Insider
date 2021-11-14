part of 'category_news4_cubit.dart';

@immutable
abstract class CategoryNews4State {}

class CategoryNews4Initial extends CategoryNews4State {}

class HomeCatnewsData4 extends CategoryNews4State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData4({this.categoryNewsResponse});
}