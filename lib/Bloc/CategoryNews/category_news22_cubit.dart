import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news22_state.dart';

class CategoryNews22Cubit extends Cubit<CategoryNews22State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews22Cubit() : super(CategoryNews22Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData22(categoryNewsResponse:result))
      }
    });
  }
}
