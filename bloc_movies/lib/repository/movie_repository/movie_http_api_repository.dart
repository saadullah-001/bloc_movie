import 'package:bloc_movies/data/network/network.dart';
import 'package:bloc_movies/models/movie_model/movie_model.dart';
import 'package:bloc_movies/repository/movie_repository/movie_api_repository.dart';

class MovieHttpApiRepository extends MovieApiRepository {
  @override
  Future<MovieModel> fetchMovies(String url) async {
    final BaseApiServices apiServices = NetworkApiServices();
    dynamic response = await apiServices.getApi(url);
    return MovieModel.fromJson(response);
  }
}
