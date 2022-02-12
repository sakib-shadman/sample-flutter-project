import 'package:dio/dio.dart';

abstract class BaseError {
  DioError? dioError;

  BaseError generate(dynamic error) {
    if (error is DioError) {
      if (error.type == DioErrorType.receiveTimeout ||
          error.type == DioErrorType.connectTimeout ||
          error.type == DioErrorType.sendTimeout) {
        dioError = error;
      } else {
        generateError(error.response?.data as Map<String, dynamic>?);
      }
    }

    return this;
  }

  void generateError(Map<String, dynamic>? data);
}
