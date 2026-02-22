part of 'login_bloc.dart';

abstract class LoginEvents extends Equatable {
  const LoginEvents();

  @override
  List<Object?> get props => [];
}

class EmailEvent extends LoginEvents {
  final String email;
  const EmailEvent({required this.email});

  List<Object?> get props => [email];
}

class PasswordEvent extends LoginEvents {
  final String password;
  const PasswordEvent({required this.password});

  List<Object?> get props => [password];
}

class LoginSubmitEvent extends LoginEvents {}
