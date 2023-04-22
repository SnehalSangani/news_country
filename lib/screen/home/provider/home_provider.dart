import 'package:flutter/cupertino.dart';
import 'package:news_country/screen/home/model/home_model.dart';
import 'package:news_country/screen/utils/api_helper.dart';

class Homeprovider extends ChangeNotifier
{
  String selectedcountry="in";
  Apihelper apihelper=Apihelper();
  Newsmodel? newsmodel;
  void changecountry(String country)
  {
    selectedcountry=country;
    notifyListeners();
  }
  Future<Newsmodel> callapi(String country)
  async {
    Apihelper apihelper=Apihelper();
    Newsmodel newsmodel=await apihelper.newsapicall(country);
    return newsmodel;
  }

}