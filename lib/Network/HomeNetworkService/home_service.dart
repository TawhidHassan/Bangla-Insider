import 'dart:convert';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class HomeNetwork{
  var logger = Logger();

  Future homeData()async {
    try{
      var response = await http.post(
        Uri.parse(BASE_URL + "home?language=1"),
        headers: {
          "Content-type": "application/json",
          "Accept": "application/json"
        },
      );
      logger.d(response.body);
      return jsonDecode(response.body);
    }catch(e){
      print(e);
      return null;
    }
  }




}