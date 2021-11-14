import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news12_state.dart';

class CategoryNews12Cubit extends Cubit<CategoryNews12State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews12Cubit() : super(CategoryNews12Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData12(categoryNewsResponse:result))
      }
    });
  }
}
