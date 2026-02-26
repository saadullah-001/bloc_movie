import 'dependency_injection.dart';

GetIt getIt = GetIt.instance;

class Locator {
  void servicesLocator() {
    getIt.registerLazySingleton<AuthHttpApiRepository>(
      () => AuthHttpApiRepository(),
    );
    getIt.registerLazySingleton<SecureStorage>(() => SecureStorage());
    getIt.registerLazySingleton<AuthBloc>(
      () => AuthBloc(storage: getIt<SecureStorage>()),
    );
    getIt.registerLazySingleton<MovieHttpApiRepository>(
      () => MovieHttpApiRepository(),
    );
  }
}
