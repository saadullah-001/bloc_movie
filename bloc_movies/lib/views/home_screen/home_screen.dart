import 'package:bloc_movies/bloc/authBloc/auth_bloc.dart';
import 'package:bloc_movies/bloc/loginBloc/login_bloc.dart';
import 'package:bloc_movies/config/routes/routes_name.dart';
import 'package:bloc_movies/dependency_injection/locator.dart';
import 'package:bloc_movies/models/userModel/user_model.dart';
import 'package:bloc_movies/repository/auth_repository/auth_http_api_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;
    final UserModel user = state.user;
    print(state.isLogin);
    return BlocProvider(
      create: (_) => LoginBloc(
          authApiRepository: getIt<AuthHttpApiRepository>(),
          auth: context.read<AuthBloc>()),
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(AuthClear());
                    Navigator.pushReplacementNamed(context, RoutesName.login);
                  },
                  icon: Icon(Icons.logout))
            ],
          ),
          body: Center(
              child: Text(
                  'Welcome to Home page, ${state.isLogin ? user.firstName : "user"}'))),
    );
  }
}
