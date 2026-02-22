import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:bloc_movies/data/exceptions/app_exceptions.dart';
import 'package:bloc_movies/data/response/api_response.dart';
import 'package:bloc_movies/models/userModel/user_model.dart';
import 'package:bloc_movies/repository/auth_repository/auth_repository.dart';
import 'package:bloc_movies/utils/app_urls/app_urls.dart';
import 'package:bloc_movies/utils/enums/enums.dart';
import 'package:equatable/equatable.dart';

part 'login_events.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  final AuthApiRepository authApiRepository = AuthHttpApiRepository();

  LoginBloc() : super(const LoginStates()) {
    on<EmailEvent>(emailEvent);
    on<PasswordEvent>(passwordEvent);
    on<LoginSubmitEvent>(loginEvent, transformer: droppable());
  }

  void emailEvent(EmailEvent event, Emitter<LoginStates> emit) {
    emit(state.copyWith(email: event.email));
  }

  void passwordEvent(PasswordEvent event, Emitter<LoginStates> emit) {
    emit(state.copyWith(password: event.password));
  }

  void loginEvent(LoginSubmitEvent event, Emitter<LoginStates> emit) async {
    final Map<String, String> data = {
      'username': state.email,
      'password': state.password
    };
    print(state.email);
    print(state.password);
    try {
      emit(state.copyWith(response: ApiResponse.loading()));
      final UserModel userData =
          await authApiRepository.loginApi(AppUrls.loginEndpoint, data);
      emit(state.copyWith(response: ApiResponse.completed(userData)));
    } on AppExceptions catch (e) {
      emit(state.copyWith(
          response: ApiResponse.error(e.toString(), e.exceptionType)));
    } catch (e) {
      emit(state.copyWith(
          response:
              ApiResponse.error(e.toString(), ExceptionType.systemException)));
    }
  }
}
