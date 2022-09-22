import 'package:dio/dio.dart';
import 'package:the_movie_app/core/error/exception.dart';
import 'package:the_movie_app/core/error/failures.dart';

class ExceptionUtil {
  static Failure throwSpecificFailure(CustomException e) {
    switch (e.runtimeType) {
      case GetCachedException:
        return GetCachedFailure();
      case CachedException:
        return CachedFailure();
      case FetchDataException:
        return FetchDataFailure();
      case BadRequestException:
        return BadRequestFailure();
      case UnauthorizedException:
      default:
        return UnauthorizedFailure();
    }
  }

  static CustomException specificException(Response response) {
    switch (response.statusCode) {
      case 404:
        return BadRequestException(response.data["status_message"]);
      case 400:
      case 401:
        return UnauthorizedException(response.data["status_message"]);
      case 500:
      default:
        return FetchDataException(
            'Error occurred with status code: ${response.statusCode} while request api');
    }
  }

  static String throwSpecificMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return "Server Failure";
      case CachedFailure:
        return "Cached Failure";
      case GetCachedFailure:
        return "Get Cached Failure";
      case FetchDataFailure:
        return "Fetch Data Failure";
      case BadRequestFailure:
        return "Fetch Data Failure";
      case UnauthorizedFailure:
        return "Fetch Data Failure";
      case RequestTokenExpired:
      default:
        return "Request Token Expired";
    }
  }
}
