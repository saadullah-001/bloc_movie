import 'package:bloc_movies/bloc/authBloc/auth_bloc.dart';
import 'package:bloc_movies/config/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashService {
  static Future<void> splashService(BuildContext context) async {
    final state = context.read<AuthBloc>().state;
    await Future.delayed(const Duration(seconds: 2));

    if (state.isLogin == true) {
      print("hello");
      Navigator.pushReplacementNamed(context, RoutesName.home);
    } else {
      print("2");
      Navigator.pushReplacementNamed(context, RoutesName.login);
    }
  }

  static Future<void> service(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));

    Navigator.pushReplacementNamed(context, RoutesName.login);
  }
}
