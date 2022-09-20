import 'package:the_movie_app/domain/entities/entity.dart';

class RequestTokenEntity extends Entity {
  bool? success;
  String? expiresAt;
  String? requestToken;
  RequestTokenEntity({
    this.success,
    this.expiresAt,
    this.requestToken,
  });
}
