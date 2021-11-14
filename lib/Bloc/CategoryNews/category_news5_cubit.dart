import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news5_state.dart';

class CategoryNews5Cubit extends Cubit<CategoryNews5State> {
  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews5Cubit() : super(CategoryNews5Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData5(categoryNewsResponse:result))
      }
    });
  }
}
