import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.getRequestToken() = GetRequestToken;

  const factory AuthEvent.requestLogin(
      {required String username, required String password}) = RequestLogin;
}
