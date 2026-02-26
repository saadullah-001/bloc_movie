import 'package:bloc_movies/data/exceptions/app_exceptions.dart';
import 'package:bloc_movies/data/response/api_response.dart';
import 'package:bloc_movies/models/movie_model/movie_model.dart';
import 'package:bloc_movies/repository/movie_repository/movie_api_repository.dart';
import 'package:bloc_movies/utils/app_urls/app_urls.dart';
import 'package:bloc_movies/utils/enums/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MovieApiRepository repository;
  MovieBloc({required this.repository}) : super(const MovieState()) {
    on<OnScreenStart>(onScreenStart);
  }

  Future<void> onScreenStart(
    OnScreenStart event,
    Emitter<MovieState> emit,
  ) async {
    try {
      emit(state.copyWith(response: ApiResponse.loading()));

      final MovieModel moviesList = await repository.fetchMovies(
        AppUrls.moviesEndpoint,
      );

      if (moviesList.tvShows != []) {
        emit(state.copyWith(response: ApiResponse.completed(moviesList)));
      } else {
        emit(
          state.copyWith(
            response: ApiResponse.error(
              "No data",
              ExceptionType.unknownException,
            ),
          ),
        );
      }
    } on AppExceptions catch (e) {
      emit(
        state.copyWith(
          response: ApiResponse.error(e.toString(), e.exceptionType),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          response: ApiResponse.error(
            e.toString(),
            ExceptionType.systemException,
          ),
        ),
      );
    }
  }
}
