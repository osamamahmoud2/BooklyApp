import 'package:dio/dio.dart';

abstract class Failures {
  final String errMassage;

  Failures(this.errMassage);
}

class SeverFailure extends Failures {
  SeverFailure(super.errMassage);
  factory SeverFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return SeverFailure('connectionTimeout to Server, Please Try Later! ');
      case DioExceptionType.sendTimeout:
        return SeverFailure('sendTimeout to Server, Please Try Later! ');
      case DioExceptionType.receiveTimeout:
        return SeverFailure('receiveTimeout to Server, Please Try Later! ');
      case DioExceptionType.badCertificate:
        return SeverFailure('badCertificate to Server, Please Try Later! ');
      case DioExceptionType.badResponse:
        return SeverFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return SeverFailure('Request to Api Server Was canceled ');
      case DioExceptionType.connectionError:
        return SeverFailure(
            'connectionError , Please Check Your Internet, and Try Again!');

      case DioExceptionType.unknown:
        return SeverFailure('UnKnown , Please Try Again!s');
    }
  }
  factory SeverFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return response['error']['message'];
    } else if (statusCode == 404) {
      return SeverFailure('Your Request Not Fount');
    } else if (statusCode == 500) {
      return SeverFailure('Internal server error , Please Try Later!');
    } else {
      return SeverFailure('Opps There Was an error, Please Try Later!');
    }
  }
}
