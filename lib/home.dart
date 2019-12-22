import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/constants.dart';
import 'package:movies/dot_item.dart';
import 'package:movies/screen_more.dart';
import 'package:movies/screen_home.dart';
import 'package:movies/screen_search.dart';
import 'package:movies/screen_shows.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;

  final List<Widget> screens = [
       ScreenHome(),ScreenSearch(),ScreenShows(),ScreenFavourite()
  ];
  Widget currentItem = ScreenHome();
  items choosed = items.home;
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentItem),

      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 10,
                  color: dotColor,
                  offset: Offset(15,
                      15)
              )
            ]
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                DotItem(
                    onPress:(){
                      setState(() {
                        choosed = items.home;
                        currentTab = 0;
                        currentItem = screens[currentTab];

                      });
                    } ,
                    text: "HOME",
                    icon: FlevaIcons.home_outline,
                    isDotVisible: choosed == items.home ? true : false,
                    isIconVisible: choosed == items.home ? false : true),
                DotItem(
                    onPress: (){
                      setState(() {
                        choosed = items.search;
                        currentTab = 1;
                        currentItem = screens[currentTab];
                      });
                    },
                    text: "SEARCH",
                    icon: FlevaIcons.search_outline,
                    isDotVisible: choosed == items.search ? true : false,
                    isIconVisible: choosed == items.search ? false : true),
                DotItem(
                    onPress: (){
                      setState(() {
                        choosed = items.shows;
                        currentTab = 2;
                        currentItem = screens[currentTab];
                      });
                    },
                    text: "SHOWS",
                    icon: FlevaIcons.video_outline,
                    isDotVisible: choosed == items.shows ? true : false,
                    isIconVisible: choosed == items.shows ? false : true),
                DotItem(
                    onPress: (){
                      setState(() {
                        choosed = items.menu;
                        currentTab = 3;
                        currentItem =screens[currentTab];
                      });
                    },
                    text: "MORE",
                    icon: Icons.more_horiz,
                    isDotVisible: choosed == items.menu ? true : false,
                    isIconVisible: choosed == items.menu ? false : true),
              ],
            ),
          ],
        ),
      )
    );
  }
}

enum items{
  home,
  search,
  shows,
  menu

}