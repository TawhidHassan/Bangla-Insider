part of 'category_news10_cubit.dart';

@immutable
abstract class CategoryNews10State {}

class CategoryNews10Initial extends CategoryNews10State {}
class HomeCatnewsData10 extends CategoryNews10State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData10({this.categoryNewsResponse});
}