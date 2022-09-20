import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';

part 'cast_detail_state.freezed.dart';

@freezed
class CastDetailState with _$CastDetailState {
  const factory CastDetailState.initial() = _CastDetailInitial;
  const factory CastDetailState.loading() = _CastDetailLoading;
  const factory CastDetailState.failed({required String message}) =
      _CastDetailFailed;
  const factory CastDetailState.successful({required CastEntity castEntity}) =
      _CastDetailSuccessful;
}
