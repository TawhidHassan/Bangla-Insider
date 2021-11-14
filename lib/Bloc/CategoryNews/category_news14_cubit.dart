import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news14_state.dart';

class CategoryNews14Cubit extends Cubit<CategoryNews14State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews14Cubit() : super(CategoryNews14Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData14(categoryNewsResponse:result))
      }
    });
  }
}
