import 'package:flutter/material.dart';
import 'package:movies/card_selectable.dart';
import 'package:movies/constants.dart' as prefix0;
import 'package:movies/show_movies.dart';
import 'package:movies/show_series.dart';

import 'constants.dart';

class ScreenShows extends StatefulWidget {
  final bool visible;
  ScreenShows({ this.visible});

  @override
  _ScreenShowsState createState() => _ScreenShowsState();
}

class _ScreenShowsState extends State<ScreenShows> {
  shows choiced = shows.movies;

  List<Widget> screens_shows = [
    ShowMovies(),
    ShowSeries()
  ];

   Widget currentScreen = ShowMovies();

  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
             elevation: 0.0,
             backgroundColor: prefix0.backgroundColor,
             title: Text('Your Shows', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),),
           ),
           body: Container(
             child: Column(
               children: <Widget>[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: <Widget>[
                     SelectableCard(
                         onPress: (){
                          setState(() {
                            choiced = shows.movies;
                            currentScreen = ShowMovies();
                          });
                         },
                         text: "MOVIES",
                         tColor: choiced == shows.movies ? prefix0.dotColor : prefix0.inactiveColor,
                         color: choiced == shows.movies ? prefix0.dotColor : prefix0.inactiveColor, ),
                     SelectableCard(
                       onPress: (){
                         setState(() {
                           choiced = shows.series;
                           currentScreen =ShowSeries();
                         });
                       },
                       text: "SERIES",
                       tColor: choiced == shows.series ? prefix0.dotColor : prefix0.inactiveColor,
                       color: choiced == shows.series ? prefix0.dotColor : prefix0.inactiveColor, )
                   ],
                 ),
                 Expanded(child: PageStorage(bucket: bucket, child: currentScreen))
               ],
             ),
           ),

        );
  }
}
enum shows {
 movies,
 series
}