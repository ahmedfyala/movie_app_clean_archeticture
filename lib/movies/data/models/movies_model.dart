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
}
