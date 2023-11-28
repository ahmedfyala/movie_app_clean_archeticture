class ApiConstance {
  static const baseUrl = "https://api.themoviedb.org/3";
  static const apiKey = "229c83183b45c4a3cae8c6ca8b7cefbb";
  static const nowPlayingMoviePath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const PopularMoviePath = "$baseUrl/movie/popular?api_key=$apiKey";
  static const TopRatedMoviePath = "$baseUrl/movie/top_rated?api_key=$apiKey";
}
