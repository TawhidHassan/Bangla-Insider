
import 'package:banglainsider/Data/CategoryNews/CategoryNewsResponse.dart';
import 'package:banglainsider/Network/CategoryNewsNetworkService/category_news_service.dart';
import 'package:logger/logger.dart';

class CategoryNewsRepository{
  var logger = Logger();
  CategoryNewsNetwork categoryNewsNetwork=CategoryNewsNetwork();

  Future<CategoryNewsResponse> homeCategoryData(int lan,int menu) async {
    Map<String, int> data = {
      "language":lan,
      "menu_id": menu,
    };
    final homeRaw=await categoryNewsNetwork.homeCategoryData(data);
    // logger.d(CategoryNewsResponse.fromJson(homeRaw));

    return CategoryNewsResponse.fromJson(homeRaw);
  }



}