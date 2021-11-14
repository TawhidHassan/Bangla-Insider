import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_news16_state.dart';

class CategoryNews16Cubit extends Cubit<CategoryNews16State> {

  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNews16Cubit() : super(CategoryNews16Initial());
  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(lan!,menuId!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData16(categoryNewsResponse:result))
      }
    });
  }
}
