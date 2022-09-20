import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_app/data/models/list_movie_model.dart';

part 'upcoming_state.freezed.dart';

@freezed
class UpcomingState with _$UpcomingState {
  const factory UpcomingState.initial() = _UpcomingInitial;
  const factory UpcomingState.loading() = _UpcomingLoading;
  const factory UpcomingState.failed({required String message}) =
      _UpcomingFailed;
  const factory UpcomingState.successful(
      {required ListMovieModel listMovieModel}) = _UpcomingSuccessful;
}
