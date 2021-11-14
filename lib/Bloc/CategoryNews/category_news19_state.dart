part of 'category_news19_cubit.dart';

@immutable
abstract class CategoryNews19State {}

class CategoryNews19Initial extends CategoryNews19State {}
class HomeCatnewsData19 extends CategoryNews19State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData19({this.categoryNewsResponse});
}