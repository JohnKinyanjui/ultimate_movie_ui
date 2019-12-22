import 'constants.dart';
import 'package:flutter/material.dart';

class SelectableCard extends StatelessWidget {
  final String text;
  final Color tColor;
  final Color color;
  final Function onPress;

  SelectableCard({@required this.text,@required this.tColor,@required this.color,@required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(left: 25),
        child: Column(
          children: <Widget>[
            Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: tColor),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 5,
                    width: 20,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  Container(
                    height: 5,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
