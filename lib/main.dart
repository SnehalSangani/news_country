import 'package:flutter/material.dart';
import 'package:news_country/screen/home/provider/home_provider.dart';
import 'package:news_country/screen/home/tab_screen.dart';
import 'package:news_country/screen/home/view/home_screen.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => tab(),
          'home':(context) => home(),
        },
      ),
    )
  );

}