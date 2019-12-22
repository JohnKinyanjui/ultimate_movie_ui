import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/constants.dart';

class BoxCard extends StatelessWidget {

  final String tags;
  BoxCard({@required this.tags});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: dotColor,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Center(
        child: Text('#$tags',style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15,color: Colors.white),),
      ),
    );
  }
}
