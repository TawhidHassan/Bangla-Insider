import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news15_state.dart';

class CategoryNews15Cubit extends Cubit<CategoryNews15State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews15Cubit() : super(CategoryNews15Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData15(categoryNewsResponse:result))
      }
    });
  }
}
