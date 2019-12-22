import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:movies/constants.dart';
import 'package:movies/constants.dart' as prefix0;
import 'package:movies/model_grid.dart';

class ScreenPost extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ModelGrid items =ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
                SliverAppBar(
                  backgroundColor: prefix0.backgroundColor,
                   expandedHeight: 400,
                   flexibleSpace: FlexibleSpaceBar(
                     background: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(items.logo_path),fit: BoxFit.cover)
                        ),
                       child: Container(
                          decoration: BoxDecoration(

                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                                colors: <Color>[
                                  Colors.black,
                                  Colors.black.withOpacity(.1)
                            ])
                          ),
                         child: Padding(
                           padding: EdgeInsets.all(20),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                               Text(items.title, style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                               SizedBox(height: 20,),
                               Row(
                                 children: <Widget>[
                                    Container(
                                      height: 40,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: prefix0.dotColor,
                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                      ),
                                      child: Center(
                                        child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(FlevaIcons.star_outline,color: Colors.white,),
                                            ),
                                            Text(items.ratings, style: TextStyle(color: Colors.black, fontSize: 16),
                                   ),
                                          ],
                                        ),
                                      ),
                                    ),
                                   SizedBox(width: 40,),

                                 ],
                               )
                             ],
                           ),
                         ),
                       ),
                     )
                   ),
                ),
              SliverList(delegate: SliverChildListDelegate(
               [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(items.subtitle,style: TextStyle(fontSize: 20,color: Colors.white),),
                      ),
                      SizedBox(height: 100,)
                    ],
                  ),
                )
               ]
              ),
                
              )
          ],),
          Positioned.fill(
              bottom: 50,
              child: Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child:Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          height: 50,
                          decoration: BoxDecoration(
                              color: dotColor,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Align(child: Text('Watch Now',style: TextStyle(color: Colors.white),),)
                      )
                  ),
                ),

              )
        ],
      ),
    );
  }
}
