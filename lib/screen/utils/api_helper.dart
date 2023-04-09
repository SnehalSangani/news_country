import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:news_country/screen/home/model/home_model.dart';

class Apihelper
{
  Future<Newsmodel> newsapicall(String country)
  async {
    String newslink = "https://newsapi.org/v2/top-headlines?$country=us&category=business&apiKey=8c31baae406f49f2957e07f5df5089be";
    Uri uri = Uri.parse(newslink);
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    Newsmodel n1 = Newsmodel().newsfromjson(json);
    return n1;
  }
}