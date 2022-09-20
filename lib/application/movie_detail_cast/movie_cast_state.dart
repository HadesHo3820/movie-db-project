import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_app/domain/entities/credit_entity.dart';

part 'movie_cast_state.freezed.dart';

@freezed
class MovieCastState with _$MovieCastState {
  const factory MovieCastState.initial() = _MovieCastInitial;
  const factory MovieCastState.loading() = _MovieCastLoading;
  const factory MovieCastState.failed({required String message}) =
      _MovieCastFailed;

  const factory MovieCastState.successful(
      {required CreditEntity creditEntity}) = _MovieCastSuccessful;
}
