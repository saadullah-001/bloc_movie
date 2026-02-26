part of 'movie_bloc.dart';

class MovieState extends Equatable {
  final ApiResponse response;

  const MovieState({this.response = const ApiResponse.initial()});

  MovieState copyWith({ApiResponse? response}) {
    return MovieState(response: response ?? this.response);
  }

  @override
  List<Object?> get props => [response];
}
