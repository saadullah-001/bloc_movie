// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  token: json['accessToken'] as String? ?? '',
  id: (json['id'] as num?)?.toInt() ?? 0,
  userName: json['userName'] as String? ?? '',
  email: json['email'] as String? ?? '',
  firstName: json['firstName'] as String? ?? '',
  lastName: json['lastName'] as String? ?? '',
  gender: json['gender'] as String? ?? '',
  image: json['image'] as String? ?? '',
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'accessToken': instance.token,
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'image': instance.image,
    };
