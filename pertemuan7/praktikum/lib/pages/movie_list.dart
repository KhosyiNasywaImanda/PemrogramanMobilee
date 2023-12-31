import 'package:flutter/material.dart';
import 'package:praktikum/service/http_service.dart';
import 'package:praktikum/pages/movie_detail.dart';



class MovieList extends StatefulWidget{
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int movieCount = 0;
  List movies = [];
  HttpService? service ;
  String result = "";
  
  Future initialize() async {
    movies = [];
    movies = (await service?.getPopularMovies()) as List;
    setState(() {
      movieCount = movies.length;
      movies = movies;
    });
  }

  @override
  void initState() {
    service = HttpService();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movies"),
      ),
      body: ListView.builder(
        itemCount: (this.movieCount == null) ? 0 : this.movieCount,
        itemBuilder: (context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child : ListTile(
              leading: Image.network(movies[position].posterPath),
              title: Text(movies[position].tittle),
              subtitle: Text(
                'Rating = ' + movies[position].voteAverage.toString(),
              ),
              onTap: () {
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (_) => MovieDetail(movies[position]));
                Navigator.push(context, route);
              },
            ),
          );
        },
      ),
    );
  }
}
