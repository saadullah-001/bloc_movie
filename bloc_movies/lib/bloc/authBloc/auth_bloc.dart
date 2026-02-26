import 'package:bloc_movies/services/storage/secure_storage.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc_movies/models/userModel/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_events.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvents, AuthState> {
  SecureStorage storage;
  AuthBloc({required this.storage}) : super(const AuthState()) {
    on<AuthSuccess>(authSuccess);
    on<AuthFailed>(authFailed);
    on<AuthClear>(authLogOut);
  }

  Future<void> authSuccess(AuthSuccess event, Emitter<AuthState> emit) async {
    await storage.setValue(key: "token", value: event.token);
    print(event.user.firstName);
    emit(state.copyWith(isLogin: true, token: event.token, user: event.user));
  }

  void authFailed(AuthFailed event, Emitter<AuthState> emit) {
    emit(state.copyWith(isLogin: false));
  }

  void authLogOut(AuthClear event, Emitter<AuthState> emit) {
    emit(state.copyWith(isLogin: false, token: '', user: const UserModel()));
  }
}
