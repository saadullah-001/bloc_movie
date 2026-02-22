import 'package:bloc_movies/models/userModel/user_model.dart';

abstract class AuthApiRepository {
  Future<UserModel> loginApi(String url, dynamic data);
}
