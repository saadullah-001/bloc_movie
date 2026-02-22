enum ApiStatus { initial, loading, completed, error }

enum LoginStatus { initial, loading, completed, error }

enum MovieStatus { loading, completed, error }

enum ExceptionType {
  noInternetException,
  fetchDataException,
  badRequestException,
  unAuthorizedException,
  invalidInputException,
  timerOutException,
  unknownException,
  systemException
}
