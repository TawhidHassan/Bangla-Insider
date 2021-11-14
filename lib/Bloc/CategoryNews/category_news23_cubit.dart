import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news23_state.dart';

class CategoryNews23Cubit extends Cubit<CategoryNews23State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews23Cubit() : super(CategoryNews23Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData23(categoryNewsResponse:result))
      }
    });
  }
}
