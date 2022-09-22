class ServerException implements Exception {}

// class CachedException implements Exception {}

// class GetCachedException implements Exception {}

class CustomException implements Exception {
  final String? _prefix;
  CustomException([this._prefix]);

  @override
  String toString() {
    return _prefix.toString();
  }
}

class GetCachedException extends CustomException {
  GetCachedException([String? message])
      : super(message ?? "Get Cached Data Error");
}

class CachedException extends CustomException {
  CachedException([String? message]) : super(message ?? "Cached Error");
}

class FetchDataException extends CustomException {
  FetchDataException([String? message]) : super(message ?? 'Internet Error');
}

class BadRequestException extends CustomException {
  BadRequestException([String? message]) : super(message ?? 'Internet Error');
}

class UnauthorizedException extends CustomException {
  UnauthorizedException([String? message]) : super(message ?? 'Internet Error');
}
