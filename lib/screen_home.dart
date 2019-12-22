import 'package:flutter/material.dart';
import 'package:movies/card_grid.dart';
import 'package:movies/card_selectable.dart';
import 'package:movies/constants.dart' as prefix0;
import 'package:movies/model_grid.dart';
import 'package:movies/screen_post.dart';

import 'constants.dart';

class ScreenHome extends StatefulWidget {

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}
homeOptions choiced;

List<ModelGrid> home_items =[
  ModelGrid(title: "Jumanji 2", subtitle: "When Spencer goes back into the fantastical world of Jumanji, pals Martha, Fridge and Bethany re-enter the game to bring him home. But the game is now broken -- and fighting back. Everything the friends know about Jumanji is about to change, as they soon discover there's more obstacles and more danger to overcome.", ratings: "6.0", logo_path: 'assets/images/movies/jumanji.jpg', image_path: 'assets/images/movies/jumanji.jpg'),
  ModelGrid(title: "The Flash", subtitle: "Barry Allen, a forensic scientist with the Central City police force, is struck by lightning in a freak accident. When he wakes up after nine months, he discovers that he can achieve great speeds.", ratings: "7.0", logo_path: 'assets/images/series/flash.jpg', image_path: 'assets/images/movies/jumanji.jpg'),
  ModelGrid(title: "Gemini Man", subtitle: "ComingSoon", ratings: "8.0", logo_path: 'assets/images/movies/gemini.jpg', image_path: 'assets/images/movies/jumanji.jpg'),
  ModelGrid(title: "Gotham", subtitle: "ComingSoon", ratings: "8.0", logo_path: 'assets/images/series/gotham.jpg', image_path: 'assets/images/movies/jumanji.jpg'),
  ModelGrid(title: "Venom 2", subtitle: "ComingSoon", ratings: "7.0", logo_path: 'assets/images/movies/venom.png', image_path: 'assets/images/movies/jumanji.jpg'),
  ModelGrid(title: "Dragon Prince", subtitle: "ComingSoon", ratings: "8.0", logo_path: 'assets/images/series/dragon_prince.jpg', image_path: 'assets/images/movies/jumanji.jpg')



];

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:backgroundColor,
        title: Text('Discover', style: prefix0.headStyle,),
      ),
      body: Container(
            height: double.infinity,
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,),
                itemCount: home_items.length,
                itemBuilder: (BuildContext context,int index){
                     return CardGrid(
                         onPress: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenPost(),
                             settings: RouteSettings(
                               arguments: home_items[index]
                             )));
                         },
                         title: home_items[index].title,
                         rating: home_items[index].ratings,
                         logo: home_items[index].logo_path);
                       }
                   ),
    ));
  }
}


enum homeOptions {
  Trending,Popular,Latest,Newest
}