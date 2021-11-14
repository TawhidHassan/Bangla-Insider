import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news4_state.dart';

class CategoryNews4Cubit extends Cubit<CategoryNews4State> {
  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews4Cubit() : super(CategoryNews4Initial());

  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData4(categoryNewsResponse:result))
      }
    });
  }
}
