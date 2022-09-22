import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_app/data/models/list_movie_model.dart';
part 'playing_state.freezed.dart';

@freezed
class PlayingState with _$PlayingState {
  const factory PlayingState.initial() = _PlayingInitial;
  const factory PlayingState.loading() = _PlayingLoading;
  const factory PlayingState.failed({required String message}) = _PlayingFailed;
  const factory PlayingState.successful(
      {required ListMovieModel listMovieModel}) = _PlayingSuccesful;
}
