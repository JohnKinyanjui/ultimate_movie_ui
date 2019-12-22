import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:movies/constants.dart';

class CardGrid extends StatelessWidget {

  final String title;
  final String rating;
  final String logo;
  final Function onPress;

  CardGrid({@required this.title,@required this.rating,@required this.logo, this.onPress});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(logo,),

            fit: BoxFit.cover),

            borderRadius: BorderRadius.all(Radius.circular(10)),

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(title, style: headStyle1),
              ),
                 Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Row(
                            children: <Widget>[
                              Icon(FlevaIcons.star_outline),
                              SizedBox(width: 10,),
                              Text(rating, style: TextStyle(fontSize: 15,color: Colors.white),),
                            ],
                          )),
                    )),

            ],
          ),
        ),
      ),
    );
  }
}
