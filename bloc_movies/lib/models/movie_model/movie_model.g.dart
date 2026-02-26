// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => _MovieModel(
  tvShows:
      (json['tv_shows'] as List<dynamic>?)
          ?.map((e) => MovieItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$MovieModelToJson(_MovieModel instance) =>
    <String, dynamic>{'tv_shows': instance.tvShows};

_MovieItem _$MovieItemFromJson(Map<String, dynamic> json) => _MovieItem(
  name: json['name'] as String? ?? '',
  image: json['image_thumbnail_path'] as String? ?? '',
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
);

Map<String, dynamic> _$MovieItemToJson(_MovieItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image_thumbnail_path': instance.image,
      'start_date': instance.startDate?.toIso8601String(),
    };
