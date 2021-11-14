import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news21_state.dart';

class CategoryNews21Cubit extends Cubit<CategoryNews21State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews21Cubit() : super(CategoryNews21Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData21(categoryNewsResponse:result))
      }
    });
  }
}
