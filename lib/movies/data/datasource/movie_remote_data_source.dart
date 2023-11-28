import 'package:dio/dio.dart';
import 'package:movie_app_clean_archeticture/core/network/api_constance.dart';
import 'package:movie_app_clean_archeticture/core/network/error_message_model.dart';
import 'package:movie_app_clean_archeticture/core/utilis/app_constance.dart';
import 'package:movie_app_clean_archeticture/error/exeptions.dart';
import 'package:movie_app_clean_archeticture/movies/data/models/movies_model.dart';

abstract class BaseMoviesRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies();

  Future<List<MoviesModel>> getPopularMovies();

  Future<List<MoviesModel>> getTopRatedMovies();
}

class MovieRemoteDataSource extends BaseMoviesRemoteDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio().get("${ApiConstance.nowPlayingMoviePath}");
    if (response.statusCode == 200) {
      return List<MoviesModel>.from(
        (response.data["results"] as List).map((e) => MoviesModel.fromJson(e)),
      );
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getPopularMovies() async {
    final response = await Dio().get("${ApiConstance.PopularMoviePath}");
    if (response.statusCode == 200) {
      return List<MoviesModel>.from(
        (response.data["results"] as List).map((e) => MoviesModel.fromJson(e)),
      );
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    final response = await Dio().get("${ApiConstance.TopRatedMoviePath}");
    if (response.statusCode == 200) {
      return List<MoviesModel>.from(
        (response.data["results"] as List).map((e) => MoviesModel.fromJson(e)),
      );
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
