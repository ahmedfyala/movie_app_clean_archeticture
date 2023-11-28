import 'package:dartz/dartz.dart';
import 'package:movie_app_clean_archeticture/movies/domain/entitis/movie.dart';
import 'package:movie_app_clean_archeticture/movies/domain/repository/base_movies_repository.dart';

import '../../../error/failure.dart';

class GetPopularMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  Future<Either<Failure, List<Movies>>> excute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
