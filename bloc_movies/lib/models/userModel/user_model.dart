import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @Default('') @JsonKey(name: "accessToken") String token,
    @Default(0) @JsonKey(name: "id") int id,
    @Default('') @JsonKey(name: "userName") String userName,
    @Default('') @JsonKey(name: "email") String email,
    @Default('') @JsonKey(name: "firstName") String firstName,
    @Default('') @JsonKey(name: "lastName") String lastName,
    @Default('') @JsonKey(name: "gender") String gender,
    @Default('') @JsonKey(name: "image") String image,
  }) = _UserModel;

  // You MUST uncomment this for the .g.dart file to be generated
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
