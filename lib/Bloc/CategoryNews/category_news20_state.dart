part of 'category_news20_cubit.dart';

@immutable
abstract class CategoryNews20State {}

class CategoryNews20Initial extends CategoryNews20State {}
class HomeCatnewsData20 extends CategoryNews20State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData20({this.categoryNewsResponse});
}