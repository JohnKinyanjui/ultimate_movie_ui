import 'package:flutter/material.dart';
import 'package:movies/constants.dart';

class CardMore extends StatelessWidget {

  final IconData icon;
  final String title;
  CardMore({@required this.icon,@required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.all(Radius.circular(20)),
         color: dotColor
       ),
        child: Column(
          children: <Widget>[
            Icon(icon,size: 100,color: Colors.white,),
            Text(title,style: headStyle1,)
          ],
        ),
      ),
    );
  }
}
