import 'package:flutter/material.dart';
import 'package:praktikum/models/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500';

  MovieDetail(this.movie);

  @override
  Widget build(BuildContext context) {
    String path;
    if (movie.posterPath != null) {
      path = imgPath + movie.posterPath!;
    } else {
      path =
          'https://drive.google.com/file/d/1X8jbLV4OlCTXfhZ5x6PXsDaDuK196BL2/view?usp=drive_link';
    }
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.tittle!),
      ),

      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              height: height / 1.5,
              child: Image.network(path!),
            ),
            Container(
              child: Text(movie.overview!),
              padding: EdgeInsets.only(left:16, right:16),
            ),
          ]
          )
          )
          ));
     
  }
}
