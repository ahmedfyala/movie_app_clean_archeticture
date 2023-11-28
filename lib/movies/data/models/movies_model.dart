import 'package:movie_app_clean_archeticture/movies/domain/entitis/movie.dart';

class MoviesModel extends Movies {
  MoviesModel(
      {required super.id,
      required super.title,
      required super.backdropPath,
      required super.genderIds,
      required super.overview,
      required super.voteAverage,
      required super.releaseDate});

  factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
      id: json["id"],
      title: json["title"],
      backdropPath: json["backdrop_path"],
      genderIds: List<int>.from(json["genre_ids"].map((e) => e)),
      overview: json["overview"],
      voteAverage: json["vote_average"],
      releaseDate: json["release_date"]);
}
