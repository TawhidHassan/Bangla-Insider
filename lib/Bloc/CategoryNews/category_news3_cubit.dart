import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news3_state.dart';

class CategoryNews3Cubit extends Cubit<CategoryNews3State> {
  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews3Cubit() : super(CategoryNews3Initial());

  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData3(categoryNewsResponse:result))
      }
    });
  }
}
