import 'package:bloc_movies/models/movie_model/movie_model.dart';

abstract class MovieApiRepository {
  Future<MovieModel> fetchMovies(String url);
}
