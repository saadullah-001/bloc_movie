import 'package:bloc_movies/bloc/authBloc/auth_bloc.dart';
import 'package:bloc_movies/bloc/loginBloc/login_bloc.dart';
import 'package:bloc_movies/dependency_injection/locator.dart';
import 'package:bloc_movies/repository/auth_repository/auth_repository.dart';
import 'package:bloc_movies/views/auth_views/login_screen.dart/widget/email_widget.dart';
import 'package:bloc_movies/views/auth_views/login_screen.dart/widget/password_widget.dart';
import 'package:bloc_movies/views/auth_views/login_screen.dart/widget/submit_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc_movies/dependency_injection/dependency_injection.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final FocusNode passwordFocus = FocusNode();

  // @override
  // void dispose() {
  //   passwordFocus.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginBloc(
            authApiRepository: getIt<AuthHttpApiRepository>(),
            auth: context.read<AuthBloc>()),
        child: Scaffold(
          appBar: AppBar(
              title: BlocBuilder<LoginBloc, LoginStates>(
                builder: (context, state) {
                  final username = state.response.data?.userName ?? '';
                  return Text('Login $username');
                },
              ),
              centerTitle: true),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Form(
                key: _globalKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    EmailWidget(passwordFocus: passwordFocus),
                    PasswordWidget(passwordFocus: passwordFocus),
                    SubmitButton(globalKey: _globalKey),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
