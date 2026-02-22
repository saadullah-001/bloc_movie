import 'package:bloc_movies/bloc/loginBloc/login_bloc.dart';
import 'package:bloc_movies/config/components/round_button.dart';
import 'package:bloc_movies/views/auth_views/login_screen.dart/widget/email_widget.dart';
import 'package:bloc_movies/views/auth_views/login_screen.dart/widget/password_widget.dart';
import 'package:bloc_movies/views/auth_views/login_screen.dart/widget/submit_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final FocusNode passwordFocus = FocusNode();
  final LoginBloc _loginBloc = LoginBloc();

  @override
  void dispose() {
    passwordFocus.dispose();
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login'), centerTitle: true),
        body: BlocProvider(
          create: (context) => _loginBloc,
          child: SafeArea(
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
