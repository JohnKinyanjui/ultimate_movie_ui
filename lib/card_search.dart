import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/constants.dart';

class CardSearch extends StatelessWidget {

  final String image;
  final String title;
  final String sub;

  CardSearch({@required this.image,@required this.title,@required this.sub});
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(top: 10,bottom: 30,left: 10,right: 10),
      height: 200,
      decoration: BoxDecoration(
          color: dotColor,
          borderRadius: BorderRadius.all(Radius.circular(10))
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
                image: DecorationImage(image: AssetImage(image),
                    fit: BoxFit.cover)
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 40),
                  child :Text(title, style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),)
              ),

              SizedBox(width: 10,),
              Expanded(child: Text(sub, style: TextStyle(fontSize: 15,color: Colors.white), overflow: TextOverflow.ellipsis,maxLines: 2,textAlign: TextAlign.center,)),

            ],
          )
        ],
      ),
    );
  }
}
