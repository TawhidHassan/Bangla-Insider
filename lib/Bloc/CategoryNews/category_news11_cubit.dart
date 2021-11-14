import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news11_state.dart';

class CategoryNews11Cubit extends Cubit<CategoryNews11State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews11Cubit() : super(CategoryNews11Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData11(categoryNewsResponse:result))
      }
    });
  }
}
