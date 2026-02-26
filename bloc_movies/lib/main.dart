import 'package:bloc_movies/bloc/authBloc/auth_bloc.dart';
import 'package:bloc_movies/config/routes/routes.dart';
import 'package:bloc_movies/config/routes/routes_name.dart';
import 'package:bloc_movies/dependency_injection/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Locator dependencyInjector = Locator();

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensuring that Flutter bindings are initialized
  dependencyInjector
      .servicesLocator(); // Initializing service locator for dependency injection

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => AuthBloc(storage: getIt()))],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: RoutesName.splash,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
