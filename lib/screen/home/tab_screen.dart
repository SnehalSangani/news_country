import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_country/screen/home/view/home_screen.dart';

class tab extends StatefulWidget {
  const tab({Key? key}) : super(key: key);

  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("24/7 News"),
          bottom: PreferredSize(

            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "TOP NEWS",),
                Tab(text: "COUNTRY",),
                Tab(text: "HEALTH",),
                Tab(text: "BUSINESS",),
                Tab(text: "ENTERTAINMENT",),
                Tab(text: "SPORTS",),

              ],
            ),
            preferredSize: Size.fromHeight(30),
          ),
          actions: [
            Icon(Icons.menu)
          ],
        ),
        body: TabBarView(
          children: [
            home(),
            home(),
            home(),
            home(),
            home(),
            home(),
            home(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: 'Video',),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile',),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      ),
    );
  }
}