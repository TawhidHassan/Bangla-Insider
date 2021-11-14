part of 'category_news5_cubit.dart';

@immutable
abstract class CategoryNews5State {}

class CategoryNews5Initial extends CategoryNews5State {}
class HomeCatnewsData5 extends CategoryNews5State{
  final CategoryNewsResponse? categoryNewsResponse;

  HomeCatnewsData5({this.categoryNewsResponse});
}