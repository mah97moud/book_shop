import 'package:dio/dio.dart';

abstract class Failure implements Exception {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioException(DioException dioEx) {
    return switch (dioEx.type) {
      DioExceptionType.connectionTimeout => ServerFailure(
          errMessage: 'Connection timeout with ApiServer',
        ),
      DioExceptionType.sendTimeout => ServerFailure(
          errMessage: 'Send timeout with ApiServer',
        ),
      DioExceptionType.receiveTimeout => ServerFailure(
          errMessage: 'Receive timeout with ApiServer',
        ),
      DioExceptionType.badCertificate => ServerFailure(
          errMessage: 'Bad Certificate with ApiServer',
        ),
      DioExceptionType.badResponse => ServerFailure.fromResponse(
          statusCode: dioEx.response?.statusCode ?? 0,
          response: dioEx.response?.data,
        ),
      DioExceptionType.cancel => ServerFailure(
          errMessage: 'Connection canceled with ApiServer',
        ),
      DioExceptionType.connectionError => ServerFailure(
          errMessage: 'Please check your internet connection',
        ),
      DioExceptionType.unknown => ServerFailure(
          errMessage: 'Unknown Error with ApiServer',
        ),
    };
  }

  factory ServerFailure.fromResponse({
    required int statusCode,
    dynamic response,
  }) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      final error = response as Map<String, dynamic>;
      return ServerFailure(errMessage: error['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
        errMessage: 'Your request not found, please try again later',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: 'Internal server error, Please try again later');
    } else {
      return ServerFailure(
          errMessage: 'Opps Something went wrong, Please try again');
    }
  }
}
