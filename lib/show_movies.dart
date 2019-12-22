import 'package:flutter/material.dart';
import 'package:movies/card_shows.dart';
import 'package:movies/model_movies.dart';
class ShowMovies extends StatefulWidget {
  @override
  _ShowMoviesState createState() => _ShowMoviesState();
}

class _ShowMoviesState extends State<ShowMovies> {

  List<ModelMovies> item_movies = [
    ModelMovies(image_path: "assets/images/movies/spiderman.jpg", title: "Spider Man", rating: "7.0", status: "Watch Now"),
    ModelMovies(image_path: "assets/images/movies/jumanji.jpg", title: "Jumanji 2", rating: "6.0", status: "Coming Soon"),
    ModelMovies(image_path: "assets/images/movies/starwars.jpg", title: "Star Wars", rating: "8.0", status: "Coming Soon"),
    ModelMovies(image_path: "assets/images/movies/irishman.jpeg", title: "IrishMan", rating: "7.0", status: "Watch Now"),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: item_movies.length,
        itemBuilder: (BuildContext ctx,int index)
    {
      return CardShows(
          image_path:item_movies[index].image_path,
          title: item_movies[index].title,
          rating: item_movies[index].rating,
          status: item_movies[index].status);
    });
  }
}
