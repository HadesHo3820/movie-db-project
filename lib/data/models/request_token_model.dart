import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/domain/entities/request_token_entity.dart';

class RequestTokenModel extends RequestTokenEntity implements InterfaceModel {
  RequestTokenModel._internal();
  static final RequestTokenModel _singleton = RequestTokenModel._internal();
  factory RequestTokenModel.getInstance() => _singleton;

  RequestTokenModel.fromJson(Map<String, dynamic> json) {
    success = json["success"];
    expiresAt = json["expires_at"];
    requestToken = json["request_token"];
  }

  @override
  InterfaceModel fromJson(json) {
    return RequestTokenModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => {
        "success": success,
        "expires_at": expiresAt,
        "request_token": requestToken,
      };
}
