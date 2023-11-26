import 'package:movie_app_clean_archeticture/movies/domain/entitis/movie.dart';
import 'package:movie_app_clean_archeticture/movies/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  Future<List<Movies>> excute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
