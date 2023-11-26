import 'package:movie_app_clean_archeticture/movies/domain/entitis/movie.dart';

abstract class BaseMoviesRepository {
  Future<List<Movies>> getNowPlaying();

  Future<List<Movies>> getPopularMovies();

  Future<List<Movies>> getTopRatedMovies();
}
