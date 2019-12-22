import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:movies/card_more.dart';
import 'package:movies/constants.dart';
import 'package:movies/constants.dart' as prefix0;

class ScreenFavourite extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            backgroundColor: prefix0.backgroundColor,
            title: Text('Profile',style: headStyle,),
          ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/images/series/supernatural.jpg'),
                  fit: BoxFit.cover),
                  border: Border.all(
                    color: prefix0.dotColor,
                    width: 1
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text("Jake Kirk",style: prefix0.headStyle1),
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: prefix0.dotColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Row(children: <Widget>[
                        Icon(FlevaIcons.star_outline),
                        Text('2000',style: TextStyle(fontSize: 15,color: Colors.white)),],),
                    )

                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: prefix0.dotColor,width: 300,height: 2,),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: CardMore(icon: FlevaIcons.pricetags_outline, title: "UPGRADE")),
                Expanded(child: CardMore(icon: FlevaIcons.sync_outline, title: "Share")),

              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: CardMore(icon: FlevaIcons.save_outline, title: "Saved")),
                Expanded(child: CardMore(icon: FlevaIcons.settings_2_outline, title: "Settings")),

              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
