import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_app/data/models/list_video_model.dart';

part 'movie_video_state.freezed.dart';

@freezed
class MovieVideoState with _$MovieVideoState {
  const factory MovieVideoState.initial() = _MovieVideoInitial;
  const factory MovieVideoState.loading() = _MovieVideoLoading;
  const factory MovieVideoState.failed({required String message}) =
      _MovieVideoFailed;

  const factory MovieVideoState.successful(
      {required ListVideoModel listVideoModel}) = _MovieVideoSuccessful;
}
