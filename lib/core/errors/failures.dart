import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return ServerFailure("connect Timeout");

      case DioErrorType.sendTimeout:
        return ServerFailure("send Timeout");

      case DioErrorType.receiveTimeout:
        return ServerFailure("eceive Timeout");

      case DioErrorType.response:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioErrorType.cancel:
        return ServerFailure("cancel");

      case DioErrorType.other:
        if (dioError.message.contains("SocketException")) {
          return ServerFailure("No internet connected");
        }
        return ServerFailure("UnExcpected Error,Please try leater!");

      default:
        return ServerFailure("UnExcpected Error,Please try leater!");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("request not found, try anather time");
    } else if (statusCode == 500) {
      return ServerFailure("internal server error, try anather time");
    }
    return ServerFailure("there was an error, please try again");
  }
}
