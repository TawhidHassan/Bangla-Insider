import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';

part 'category_news_state.dart';

class CategoryNewsCubit extends Cubit<CategoryNewsState> {
  var logger = Logger();
  CategoryNewsRepository categoryNewsRepository=CategoryNewsRepository();
  CategoryNewsCubit() : super(CategoryNewsInitial());


  void categoryNewsData1(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(menuId!,lan!).then((result) => {
      if(result!=null){
          emit(HomeCatnewsData1(categoryNewsResponse:result))
      }
    });
  }
  void categoryNewsData2(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(menuId!,lan!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData2(categoryNewsResponse:result))

      }
    });
  }
  void categoryNewsData3(int? menuId, int? lan) {
    categoryNewsRepository.homeCategoryData(menuId!,lan!).then((result) => {
      if(result!=null){
        emit(HomeCatnewsData3(categoryNewsResponse:result))
      }
    });
  }




}
