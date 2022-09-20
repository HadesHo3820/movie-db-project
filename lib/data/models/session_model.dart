import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/domain/entities/session_entity.dart';

class SessionModel extends SessionEntity implements InterfaceModel {
  SessionModel._internal();
  static final SessionModel _singleton = SessionModel._internal();
  factory SessionModel.getInstance() => _singleton;
  SessionModel.fromJson(Map<String, dynamic> json) {
    success = json["success"];
    sessionId = json["session_id"];
  }

  @override
  InterfaceModel fromJson(json) {
    success = json["success"];
    sessionId = json["session_id"];
    return this;
  }

  @override
  Map<String, dynamic> toJson() =>
      {"success": success, "session_id": sessionId};
}
