import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news18_state.dart';

class CategoryNews18Cubit extends Cubit<CategoryNews18State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews18Cubit() : super(CategoryNews18Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData18(categoryNewsResponse:result))
      }
    });
  }
}
