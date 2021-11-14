part of 'category_news22_cubit.dart';

@immutable
abstract class CategoryNews22State {}

class CategoryNews22Initial extends CategoryNews22State {}
class HomeCatnewsData22 extends CategoryNews22State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData22({this.categoryNewsResponse});
}