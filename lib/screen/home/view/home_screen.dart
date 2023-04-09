
import 'package:flutter/material.dart';
import 'package:news_country/screen/home/model/home_model.dart';
import 'package:news_country/screen/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Homeprovider? hpfalse;
  Homeprovider? hptrue;
  @override
  Widget build(BuildContext context) {
    hpfalse=Provider.of<Homeprovider>(context,listen: false);
    hptrue=Provider.of<Homeprovider>(context,listen: true);
    return SafeArea(child: Scaffold(
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {
                hpfalse!.changecountry('in');
              }, child: Text("in")),
              TextButton(onPressed: () {
                hpfalse!.changecountry('us');
              }, child: Text("us")),
            ],
          ),
          Expanded(
            child: FutureBuilder(
              future: hpfalse!.callapi("${hptrue!.selectedcountry}"),
              builder: (context, snapshot) {


                if(snapshot.hasError)
                {
                  return Text("${snapshot.error}");
                }
                else if(snapshot.hasData)
                {
                  Newsmodel? newsmodel=snapshot.data;
                  List<Articlemdel>? articlelist=newsmodel!.articlelist;

                  return ListView.builder(itemBuilder: (context, index) {
                    return ListTile(title: Text("${newsmodel!.articlelist![index].publishedAt}"),);
                  },itemCount: newsmodel!.articlelist!.length,);
                }
                return CircularProgressIndicator();
              },

            ),
          ),
        ],
      )


    ),
    );
  }
}
