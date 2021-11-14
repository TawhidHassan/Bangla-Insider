import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news17_state.dart';

class CategoryNews17Cubit extends Cubit<CategoryNews17State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews17Cubit() : super(CategoryNews17Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData17(categoryNewsResponse:result))
      }
    });
  }
}
