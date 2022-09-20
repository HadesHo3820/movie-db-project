abstract class Failure {
  final List<dynamic> properties;
  const Failure({this.properties = const <dynamic>[]});
}

// General Failure
class ServerFailure extends Failure {}

class CachedFailure extends Failure {}

class GetCachedFailure extends Failure {}

class FetchDataFailure extends Failure {}

class BadRequestFailure extends Failure {}

class UnauthorizedFailure extends Failure {}

class RequestTokenExpired extends Failure {}
