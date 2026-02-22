import 'package:bloc_movies/utils/enums/enums.dart';

class AppExceptions implements Exception {
  final String prefix;
  final String message;
  final ExceptionType exception;

  const AppExceptions(
      {this.prefix = '',
      this.message = '',
      this.exception = ExceptionType.unknownException});

  @override
  String toString() {
    return '$prefix: $message';
  }

  ExceptionType get exceptionType => exception;
}

class NoInternetException extends AppExceptions {
  const NoInternetException({super.message})
      : super(
            prefix: 'No Internet Connection',
            exception: ExceptionType.noInternetException);
}

class FetchDataException extends AppExceptions {
  const FetchDataException({super.message})
      : super(
            prefix: 'Error During Communication',
            exception: ExceptionType.fetchDataException);
}

class BadRequestException extends AppExceptions {
  const BadRequestException({super.message})
      : super(
            prefix: 'Invalid Request',
            exception: ExceptionType.badRequestException);
}

class UnAuthorizedException extends AppExceptions {
  const UnAuthorizedException({super.message})
      : super(
            prefix: 'UnAuthorized Request',
            exception: ExceptionType.unAuthorizedException);
}

class InvalidInputException extends AppExceptions {
  const InvalidInputException({super.message})
      : super(
            prefix: 'Invalid Input',
            exception: ExceptionType.invalidInputException);
}

class TimerOutException extends AppExceptions {
  const TimerOutException({super.message})
      : super(
            prefix: 'Time out, Retry',
            exception: ExceptionType.timerOutException);
}

class UnknownException extends AppExceptions {
  const UnknownException({super.message})
      : super(
            prefix: 'Unknown error', exception: ExceptionType.unknownException);
}
