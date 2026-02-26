import 'package:bloc_movies/bloc/authBloc/auth_bloc.dart';
import 'package:bloc_movies/config/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _handleNavigation();
  }

  Future<void> _handleNavigation() async {
    await Future.delayed(const Duration(seconds: 3));

    if (!mounted) return;

    final authState = context.read<AuthBloc>().state;

    if (authState.isLogin) {
      Navigator.pushReplacementNamed(context, RoutesName.movieScreen);
    } else {
      Navigator.pushReplacementNamed(context, RoutesName.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash Screen', style: TextStyle(fontSize: 62)),
      ),
    );
  }
}
