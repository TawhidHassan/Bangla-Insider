import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news20_state.dart';

class CategoryNews20Cubit extends Cubit<CategoryNews20State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews20Cubit() : super(CategoryNews20Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData20(categoryNewsResponse:result))
      }
    });
  }
}
