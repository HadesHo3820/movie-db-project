import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_app/data/models/list_movie_model.dart';

part 'top_rated_state.freezed.dart';

@freezed
class TopRatedState with _$TopRatedState {
  const factory TopRatedState.initial() = _TopRatedInitial;
  const factory TopRatedState.loading() = _TopRatedLoading;
  const factory TopRatedState.failed({required String message}) =
      _TopRatedFailed;
  const factory TopRatedState.successful(
      {required ListMovieModel listMovieModel}) = _TopRatedSuccesful;
}
