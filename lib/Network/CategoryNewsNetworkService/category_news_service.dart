import 'dart:convert';
import 'package:banglainsider/Constants/String/string.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class CategoryNewsNetwork{
  var logger = Logger();

  Future homeCategoryData(Map<String, int> data)async {
    try{
      var response = await http.post(
        Uri.parse(BASE_URL + "cat-news"),
        headers: {
          "Content-type": "application/json",
          "Accept": "application/json"
        },
        body: json.encode(data),
      );
      logger.d(response.body);
      return jsonDecode(response.body);
    }catch(e){
      print(e);
      return null;
    }
  }




}