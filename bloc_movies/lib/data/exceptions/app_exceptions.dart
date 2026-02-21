class AppExceptions implements Exception {
  final String prefix;
  final String message;

  const AppExceptions({this.prefix = '', this.message = ''});

  @override
  String toString() {
    return '$prefix: $message';
  }
}

class NoInternetException extends AppExceptions {
  const NoInternetException({super.message})
    : super(prefix: 'No Internet Connection');
}

class FetchDataException extends AppExceptions {
  const FetchDataException({super.message})
    : super(prefix: 'Error During Communication');
}

class BadRequestException extends AppExceptions {
  const BadRequestException({super.message}) : super(prefix: 'Invalid Request');
}

class UnAuthorizedException extends AppExceptions {
  const UnAuthorizedException({super.message})
    : super(prefix: 'UnAuthorized Request');
}

class InvalidInputException extends AppExceptions {
  const InvalidInputException({super.message}) : super(prefix: 'Invalid Input');
}

class TimerOutException extends AppExceptions {
  const TimerOutException({super.message}) : super(prefix: 'Time out, Retry');
}

class UnknownException extends AppExceptions {
  const UnknownException({super.message}) : super(prefix: 'Unknown error');
}
