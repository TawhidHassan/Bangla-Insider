import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news2_state.dart';

class CategoryNews2Cubit extends Cubit<CategoryNews2State> {
  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews2Cubit() : super(CategoryNews2Initial());

  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData2(categoryNewsResponse:result))
      }
    });
  }

}
