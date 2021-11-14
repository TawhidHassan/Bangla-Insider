import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news24_state.dart';

class CategoryNews24Cubit extends Cubit<CategoryNews24State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews24Cubit() : super(CategoryNews24Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData24(categoryNewsResponse:result))
      }
    });
  }
}
