import 'package:bloc_movies/utils/enums/enums.dart';

class ApiResponse<T> {
  final String? message;
  final T? data;
  final ApiStatus status;
  final ExceptionType? exception;

  const ApiResponse._({
    required this.status,
    this.data,
    this.message,
    this.exception,
  });

  const ApiResponse.initial() : this._(status: ApiStatus.initial);

  const ApiResponse.loading() : this._(status: ApiStatus.loading);

  const ApiResponse.completed(T data)
    : this._(status: ApiStatus.completed, data: data);

  const ApiResponse.error(String message, ExceptionType exception)
    : this._(status: ApiStatus.error, message: message, exception: exception);

  @override
  String toString() {
    return "Status: $status\nMessage: $message\nData: $data";
  }
}
