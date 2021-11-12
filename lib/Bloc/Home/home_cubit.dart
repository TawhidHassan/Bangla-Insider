import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Data/Home/HomeResponse.dart';
import 'package:banglainsider/Network/CategoryNewsNetworkService/category_news_service.dart';
import 'package:banglainsider/Repository/CategoryNewsRepository/category_news_repository.dart';
import 'package:banglainsider/Repository/HomeRepository/home_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  var logger = Logger();
  HomeRepository homeRepository=HomeRepository();
  HomeCubit() : super(HomeInitial());

  void homeData() {
    homeRepository.homeData().then((result) => {
      if(result!=null){
        emit(HomeData(homeResponse:  result))
      }
    });
  }



}
