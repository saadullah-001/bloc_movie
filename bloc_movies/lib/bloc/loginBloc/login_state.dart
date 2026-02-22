part of 'login_bloc.dart';

class LoginStates extends Equatable {
  final String email;
  final String password;
  final ApiResponse response;

  const LoginStates(
      {this.email = '',
      this.password = '',
      this.response = const ApiResponse.initial()});

  LoginStates copyWith(
      {String? email, String? password, ApiResponse? response}) {
    return LoginStates(
        email: email ?? this.email,
        password: password ?? this.password,
        response: response ?? this.response);
  }

  @override
  List<Object?> get props => [email, password, response];
}
