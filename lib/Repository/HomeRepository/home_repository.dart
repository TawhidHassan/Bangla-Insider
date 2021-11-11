
import 'package:banglainsider/Data/Home/HomeResponse.dart';
import 'package:banglainsider/Network/HomeNetworkService/home_service.dart';
import 'package:logger/logger.dart';

class HomeRepository{
  var logger = Logger();
  HomeNetwork homeNetwork=HomeNetwork();

  Future<HomeResponse> homeData() async {
    final homeRaw=await homeNetwork.homeData();
    logger.d(HomeResponse.fromJson(homeRaw));

    return HomeResponse.fromJson(homeRaw);
  }


}