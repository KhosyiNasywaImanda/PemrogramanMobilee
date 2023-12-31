class Movie {
  int? id;
  String? tittle;
  double? voteAverage;
  String? overview;
  String? posterPath;

  Movie(this.id, this.tittle, this.voteAverage, this.overview, this.posterPath);

  Movie.fromJson(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.tittle = parsedJson['title'];
    this.voteAverage = parsedJson['vote_average'] * 1.0;
    this.overview = parsedJson['overview'];
    this.posterPath = 'https://image.tmdb.org/t/p/w500/' + parsedJson['poster_path'];
    
  }
}