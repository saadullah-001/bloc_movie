part of "auth_bloc.dart";

abstract class AuthEvents extends Equatable {
  const AuthEvents();

  @override
  List<Object?> get props => [];
}

class AuthSuccess extends AuthEvents {
  final UserModel user;
  final String token;
  const AuthSuccess({required this.user, required this.token});

  @override
  List<Object?> get props => [user];
}

class AuthFailed extends AuthEvents {}

class AuthClear extends AuthEvents {}
