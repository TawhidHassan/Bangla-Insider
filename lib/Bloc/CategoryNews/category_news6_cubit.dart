import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news6_state.dart';

class CategoryNews6Cubit extends Cubit<CategoryNews6State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews6Cubit() : super(CategoryNews6Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData6(categoryNewsResponse:result))
      }
    });
  }

}
