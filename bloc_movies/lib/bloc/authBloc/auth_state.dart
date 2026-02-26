part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final bool isLogin;
  final String token;
  final UserModel user;

  const AuthState(
      {this.isLogin = false, this.user = const UserModel(), this.token = ''});

  AuthState copyWith({bool? isLogin, UserModel? user, String? token}) {
    return AuthState(
        isLogin: isLogin ?? this.isLogin,
        user: user ?? this.user,
        token: token ?? this.token);
  }

  @override
  List<Object?> get props => [isLogin, user, token];
}
