part of 'category_news17_cubit.dart';

@immutable
abstract class CategoryNews17State {}

class CategoryNews17Initial extends CategoryNews17State {}
class HomeCatnewsData17 extends CategoryNews17State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData17({this.categoryNewsResponse});
}