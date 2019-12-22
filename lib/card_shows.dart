import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/constants.dart';
class CardShows extends StatelessWidget {
  final String image_path;
  final String title;
  final String rating;
  final String status;

  CardShows({@required this.image_path,@required this.title,@required this.rating,@required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 30,),
      height: 200,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: dotColor,
            blurRadius: 25,
            offset: Offset(10, 20)
          )
        ]
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            height: 140,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
                image: DecorationImage(image: AssetImage(image_path),
                    fit: BoxFit.cover)
            ),
          ),
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 40),
                child :Text(title, style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),)
              ),
              Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Row(
                          children: <Widget>[
                            Icon(FlevaIcons.star_outline,color: Colors.red,),
                            SizedBox(width: 10,),
                            Text(rating, style: TextStyle(fontSize: 15,color: Colors.white),),
                          ],
                        )),
                  )),
              Container(
                margin: EdgeInsets.all(10),
                height: 50,
                width:150,
                decoration: BoxDecoration(
                    color: Colors.black
                ),
                child: Center(
                  child : Text(status,style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20,color: dotColor),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
