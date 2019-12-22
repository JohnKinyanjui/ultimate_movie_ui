import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:movies/card_box.dart';
import 'package:movies/card_search.dart';
import 'package:movies/constants.dart' as prefix0;
import 'package:movies/model_search.dart';

import 'constants.dart';

class ScreenSearch extends StatelessWidget {

  List<ModelSearch>search_item = [
    ModelSearch(image_path: "assets/images/movies/irishman.jpeg", title: "IrishMan", sub: "This irishman was released!!,"),
    ModelSearch(image_path: "assets/images/series/supernatural.jpg", title: "Supernat..", sub: "New Episodes,"),
    ModelSearch(image_path: "assets/images/series/gotham.jpg", title: "Gotham", sub: "New season 6,"),
    ModelSearch(image_path: "assets/images/movies/jumanji.jpg", title: "Jumanji 2", sub: "Jumanji Coming soon,"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:backgroundColor,
        title: Text('Search', style: headStyle,),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: prefix0.dotColor,
                  width: 1
                )
              ),
              width: double.infinity,
              child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      hintText: "Search",
                      prefixIcon: Icon(FlevaIcons.search_outline, color: prefix0.iconColor,),
                      hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.grey),
                      labelStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                  ),

            ),
            Column(
              children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(child: BoxCard(tags: "action",)),
                        Expanded(child: BoxCard(tags: "Animation",)),
                        Expanded(child: BoxCard(tags: "drama",)),
                      ],
                    ),
                Row(
                  children: <Widget>[
                    Expanded(child: BoxCard(tags: "thriller",)),
                    Expanded(child: BoxCard(tags: "anime",)),
                    Expanded(child: BoxCard(tags: "scifi",)),
                  ],
                ),
              ],
            ),
            Text("RECENT SEARCHES",style: prefix0.headStyle1,),
            Container(
              height: 520,
              child: ListView.builder(itemBuilder: (BuildContext context,int index){
                return CardSearch(image: search_item[index].image_path,
                    title: search_item[index].title,
                    sub: search_item[index].sub);
              },
              itemCount: search_item.length,
              ),
            )

          ],
        ),
      ),
    );
  }
}
