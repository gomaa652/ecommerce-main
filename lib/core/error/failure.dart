import 'package:dio/dio.dart';

abstract class Failure {
  final String maseege;

  Failure(this.maseege);
}

class ServerFailure extends Failure {
  ServerFailure(super.maseege);

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection Timeout with api server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('send Timeout with api server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive Timeout with api server');

      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate with api server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancld');

      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');

      case DioExceptionType.unknown:
        return ServerFailure('Opps There Was An Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int statuCode, dynamic response) {
    if (statuCode == 404) {
      return ServerFailure('your request was not found, please try later');
    } else if (statuCode == 500) {
      return ServerFailure('There is a problem with server, please try later');
    } else if (statuCode == 400 || statuCode == 401 || statuCode == 403) {
      return ServerFailure(response['message']);
    } else {
      return ServerFailure('There was an error, please try again');
    }
  }
}
