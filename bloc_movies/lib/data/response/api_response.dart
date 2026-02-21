import 'package:bloc_movies/utils/enums/enums.dart';

class ApiResponse<T> {
  final String? message;
  final T? data;
  final ApiStatus status;

  const ApiResponse._({required this.status, this.data, this.message});

  const ApiResponse.loading() : this._(status: ApiStatus.loading);

  const ApiResponse.completed(T data)
    : this._(status: ApiStatus.completed, data: data);

  const ApiResponse.error(String message)
    : this._(status: ApiStatus.error, message: message);

  @override
  String toString() {
    return "Status: $status\nMessage: $message\nData: $data";
  }
}
