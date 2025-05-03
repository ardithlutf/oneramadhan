import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rest_api/src/exceptions/custom_exception.dart';

/// Handle exceptions from Dio
class ExceptionHandler {
  ExceptionHandler._();

  static handleException(Object obj) {
    if (obj is DioException) {
      throw _getException(obj);
    }
  }

  static CustomException _getException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return CustomException(
          message: 'Connection timeout. Please check your internet connection.',
        );

      case DioExceptionType.badCertificate:
        return CustomException(
          message: 'Invalid certificate. Please contact support.',
        );

      case DioExceptionType.badResponse:
        try {
          final statusCode = error.response?.statusCode;
          if (statusCode == 401) {
            return CustomException(
              message: 'Authentication failed. Please login again.',
            );
          } else {
            return CustomException.fromJson(error.response?.data ?? {});
          }
        } catch (e) {
          return CustomException(
            message: 'Unexpected server response. Please try again later.',
          );
        }

      case DioExceptionType.cancel:
        return CustomException(
          message: 'Request was cancelled.',
        );

      case DioExceptionType.connectionError:
        return CustomException(
          message: 'Connection error. Please check your internet connection.',
        );

      case DioExceptionType.unknown:
        if (error.error is SocketException) {
          return CustomException(
            message: 'Network error. Please check your internet connection.',
          );
        }
        return CustomException(
          message: 'An unexpected error occurred. Please try again.',
        );
    }
  }
}