import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news9_state.dart';

class CategoryNews9Cubit extends Cubit<CategoryNews9State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews9Cubit() : super(CategoryNews9Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData9(categoryNewsResponse:result))
      }
    });
  }
}
