import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news13_state.dart';

class CategoryNews13Cubit extends Cubit<CategoryNews13State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews13Cubit() : super(CategoryNews13Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData13(categoryNewsResponse:result))
      }
    });
  }
}
