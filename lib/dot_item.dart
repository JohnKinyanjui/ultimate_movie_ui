import 'package:flutter/material.dart';
import 'package:movies/constants.dart';

class DotItem extends StatelessWidget {

  final bool isDotVisible;
  final bool isIconVisible;
  final String text;
  final IconData icon;
  final Function onPress;
  DotItem({@required this.text,@required this.icon,@required this.isDotVisible,@required this.isIconVisible,@required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: isDotVisible == true ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
             child: Visibility(
                 visible: isDotVisible,
                 child: Text(text, style: TextStyle(fontSize: 16, color: dotColor, fontWeight: FontWeight.w500),)),
           ),
           AnimatedOpacity(
             opacity: isDotVisible == false ? 1.0 : 1.0,
             duration: Duration(milliseconds: 500),
             child: Visibility(
                 visible: isIconVisible,
                 child: Icon(icon,color: iconColor,)),
           ),
            AnimatedOpacity(
              opacity: isDotVisible == true ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
             child: Visibility(
               visible: isDotVisible,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 7,
                   width: 7,
                   decoration: BoxDecoration(
                     color: dotColor,
                     shape: BoxShape.circle
                   ),
                 ),

               )),
           )

          ],
        ),
      ),
    );
  }
}
