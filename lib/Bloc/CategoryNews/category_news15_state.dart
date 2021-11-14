part of 'category_news15_cubit.dart';

@immutable
abstract class CategoryNews15State {}

class CategoryNews15Initial extends CategoryNews15State {}
class HomeCatnewsData15 extends CategoryNews15State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData15({this.categoryNewsResponse});
}