import 'package:the_movie_app/domain/entities/entity.dart';

class SessionEntity extends Entity {
  bool? success;
  String? sessionId;
  SessionEntity({
    this.success,
    this.sessionId,
  });
}
