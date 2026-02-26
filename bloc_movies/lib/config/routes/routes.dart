import 'package:bloc_movies/config/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:bloc_movies/views/views.dart';

class Routes {
  static Route<MaterialPageRoute> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      case RoutesName.login:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        );
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        );
      case RoutesName.movieScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MovieScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(body: Center(child: Text("No Route Defined"))),
        );
    }
  }
}
