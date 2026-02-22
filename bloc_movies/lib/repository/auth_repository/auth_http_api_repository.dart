import 'package:bloc_movies/data/network/base_api_services.dart';
import 'package:bloc_movies/data/network/network_api_services.dart';
import 'package:bloc_movies/models/userModel/user_model.dart';
import 'package:bloc_movies/repository/auth_repository/auth_api_repository.dart';

class AuthHttpApiRepository implements AuthApiRepository {
  @override
  Future<UserModel> loginApi(String url, data) async {
    BaseApiServices apiServices = NetworkApiServices();

    dynamic response = await apiServices.postApi(url, data, {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    return UserModel.fromJson(response);
  }
}
