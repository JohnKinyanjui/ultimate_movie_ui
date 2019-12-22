import 'package:flutter/material.dart';
import 'package:movies/card_shows.dart';
import 'package:movies/model_series.dart';

class ShowSeries extends StatelessWidget {
  List<ModelSeries> item_series = [
    ModelSeries(image_path: "assets/images/series/flash.jpg", title: "The Flash", rating: "8.0", status: "Watch Now"),
    ModelSeries(image_path: "assets/images/series/gotham.jpg", title: "Gotham", rating: "8.0", status: "Watch Now"),
    ModelSeries(image_path: "assets/images/series/supernatural.jpg", title: "Supernat..", rating: "8.0", status: "Watch Now")

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: item_series.length,
        itemBuilder: (BuildContext ctx,int index){
       return CardShows(
           image_path: item_series[index].image_path,
           title: item_series[index].title,
           rating: item_series[index].rating,
           status: item_series[index].status);
    });
  }
}
