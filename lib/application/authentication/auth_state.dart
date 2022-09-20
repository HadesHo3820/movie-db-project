import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_app/data/models/account_model.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.intial() = _AuthInitial;
  const factory AuthState.loading() = _AuthLoading;
  const factory AuthState.failed({required String message}) = _AuthFailed;
  const factory AuthState.getRequestTokenSuccessful() =
      _GetRequestTokenSuccessful;
  const factory AuthState.successful({required AccountModel accountModel}) =
      _AuthSuccesful;
}
