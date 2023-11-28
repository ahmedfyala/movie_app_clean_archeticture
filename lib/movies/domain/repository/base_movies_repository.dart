import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_archeticture/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movie_app_clean_archeticture/movies/domain/entitis/movie.dart';

import '../../../error/failure.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movies>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movies>>> getPopularMovies();

  Future<Either<Failure, List<Movies>>> getTopRatedMovies();
}
