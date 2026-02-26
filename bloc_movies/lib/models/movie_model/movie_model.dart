import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@Freezed() // Ensures nested lists are serialized correctly
abstract class MovieModel with _$MovieModel {
  const factory MovieModel({
    @JsonKey(name: 'tv_shows') @Default([]) List<MovieItem> tvShows,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

@Freezed()
abstract class MovieItem with _$MovieItem {
  const factory MovieItem({
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'image_thumbnail_path')
    @Default('https://via.placeholder.com/300x450')
    String image,
    @JsonKey(name: 'start_date') DateTime? startDate,
  }) = _MovieItem;

  factory MovieItem.fromJson(Map<String, dynamic> json) =>
      _$MovieItemFromJson(json);
}
