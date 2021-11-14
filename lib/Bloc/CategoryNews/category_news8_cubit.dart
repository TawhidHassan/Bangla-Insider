import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news8_state.dart';

class CategoryNews8Cubit extends Cubit<CategoryNews8State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews8Cubit() : super(CategoryNews8Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData8(categoryNewsResponse:result))
      }
    });
  }
}
