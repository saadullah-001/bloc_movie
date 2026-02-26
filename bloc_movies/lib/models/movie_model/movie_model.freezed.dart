// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieModel {

@JsonKey(name: 'tv_shows') List<MovieItem> get tvShows;
/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieModelCopyWith<MovieModel> get copyWith => _$MovieModelCopyWithImpl<MovieModel>(this as MovieModel, _$identity);

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieModel&&const DeepCollectionEquality().equals(other.tvShows, tvShows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tvShows));

@override
String toString() {
  return 'MovieModel(tvShows: $tvShows)';
}


}

/// @nodoc
abstract mixin class $MovieModelCopyWith<$Res>  {
  factory $MovieModelCopyWith(MovieModel value, $Res Function(MovieModel) _then) = _$MovieModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tv_shows') List<MovieItem> tvShows
});




}
/// @nodoc
class _$MovieModelCopyWithImpl<$Res>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._self, this._then);

  final MovieModel _self;
  final $Res Function(MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tvShows = null,}) {
  return _then(_self.copyWith(
tvShows: null == tvShows ? _self.tvShows : tvShows // ignore: cast_nullable_to_non_nullable
as List<MovieItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieModel].
extension MovieModelPatterns on MovieModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieModel value)  $default,){
final _that = this;
switch (_that) {
case _MovieModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieModel value)?  $default,){
final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tv_shows')  List<MovieItem> tvShows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that.tvShows);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tv_shows')  List<MovieItem> tvShows)  $default,) {final _that = this;
switch (_that) {
case _MovieModel():
return $default(_that.tvShows);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tv_shows')  List<MovieItem> tvShows)?  $default,) {final _that = this;
switch (_that) {
case _MovieModel() when $default != null:
return $default(_that.tvShows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieModel implements MovieModel {
  const _MovieModel({@JsonKey(name: 'tv_shows') final  List<MovieItem> tvShows = const []}): _tvShows = tvShows;
  factory _MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);

 final  List<MovieItem> _tvShows;
@override@JsonKey(name: 'tv_shows') List<MovieItem> get tvShows {
  if (_tvShows is EqualUnmodifiableListView) return _tvShows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tvShows);
}


/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieModelCopyWith<_MovieModel> get copyWith => __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieModel&&const DeepCollectionEquality().equals(other._tvShows, _tvShows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tvShows));

@override
String toString() {
  return 'MovieModel(tvShows: $tvShows)';
}


}

/// @nodoc
abstract mixin class _$MovieModelCopyWith<$Res> implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(_MovieModel value, $Res Function(_MovieModel) _then) = __$MovieModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tv_shows') List<MovieItem> tvShows
});




}
/// @nodoc
class __$MovieModelCopyWithImpl<$Res>
    implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(this._self, this._then);

  final _MovieModel _self;
  final $Res Function(_MovieModel) _then;

/// Create a copy of MovieModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tvShows = null,}) {
  return _then(_MovieModel(
tvShows: null == tvShows ? _self._tvShows : tvShows // ignore: cast_nullable_to_non_nullable
as List<MovieItem>,
  ));
}


}


/// @nodoc
mixin _$MovieItem {

@JsonKey(name: 'name') String get name;@JsonKey(name: 'image_thumbnail_path') String get image;@JsonKey(name: 'start_date') DateTime? get startDate;
/// Create a copy of MovieItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieItemCopyWith<MovieItem> get copyWith => _$MovieItemCopyWithImpl<MovieItem>(this as MovieItem, _$identity);

  /// Serializes this MovieItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieItem&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.startDate, startDate) || other.startDate == startDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,image,startDate);

@override
String toString() {
  return 'MovieItem(name: $name, image: $image, startDate: $startDate)';
}


}

/// @nodoc
abstract mixin class $MovieItemCopyWith<$Res>  {
  factory $MovieItemCopyWith(MovieItem value, $Res Function(MovieItem) _then) = _$MovieItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'image_thumbnail_path') String image,@JsonKey(name: 'start_date') DateTime? startDate
});




}
/// @nodoc
class _$MovieItemCopyWithImpl<$Res>
    implements $MovieItemCopyWith<$Res> {
  _$MovieItemCopyWithImpl(this._self, this._then);

  final MovieItem _self;
  final $Res Function(MovieItem) _then;

/// Create a copy of MovieItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? image = null,Object? startDate = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieItem].
extension MovieItemPatterns on MovieItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieItem value)  $default,){
final _that = this;
switch (_that) {
case _MovieItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieItem value)?  $default,){
final _that = this;
switch (_that) {
case _MovieItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'image_thumbnail_path')  String image, @JsonKey(name: 'start_date')  DateTime? startDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieItem() when $default != null:
return $default(_that.name,_that.image,_that.startDate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'image_thumbnail_path')  String image, @JsonKey(name: 'start_date')  DateTime? startDate)  $default,) {final _that = this;
switch (_that) {
case _MovieItem():
return $default(_that.name,_that.image,_that.startDate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String name, @JsonKey(name: 'image_thumbnail_path')  String image, @JsonKey(name: 'start_date')  DateTime? startDate)?  $default,) {final _that = this;
switch (_that) {
case _MovieItem() when $default != null:
return $default(_that.name,_that.image,_that.startDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieItem implements MovieItem {
  const _MovieItem({@JsonKey(name: 'name') this.name = '', @JsonKey(name: 'image_thumbnail_path') this.image = '', @JsonKey(name: 'start_date') this.startDate});
  factory _MovieItem.fromJson(Map<String, dynamic> json) => _$MovieItemFromJson(json);

@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'image_thumbnail_path') final  String image;
@override@JsonKey(name: 'start_date') final  DateTime? startDate;

/// Create a copy of MovieItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieItemCopyWith<_MovieItem> get copyWith => __$MovieItemCopyWithImpl<_MovieItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieItem&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.startDate, startDate) || other.startDate == startDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,image,startDate);

@override
String toString() {
  return 'MovieItem(name: $name, image: $image, startDate: $startDate)';
}


}

/// @nodoc
abstract mixin class _$MovieItemCopyWith<$Res> implements $MovieItemCopyWith<$Res> {
  factory _$MovieItemCopyWith(_MovieItem value, $Res Function(_MovieItem) _then) = __$MovieItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String name,@JsonKey(name: 'image_thumbnail_path') String image,@JsonKey(name: 'start_date') DateTime? startDate
});




}
/// @nodoc
class __$MovieItemCopyWithImpl<$Res>
    implements _$MovieItemCopyWith<$Res> {
  __$MovieItemCopyWithImpl(this._self, this._then);

  final _MovieItem _self;
  final $Res Function(_MovieItem) _then;

/// Create a copy of MovieItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? image = null,Object? startDate = freezed,}) {
  return _then(_MovieItem(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
