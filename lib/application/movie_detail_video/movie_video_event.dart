import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_video_event.freezed.dart';

@freezed
class MovieVideoEvent with _$MovieVideoEvent {
  const factory MovieVideoEvent.getListMovieVideo({required String movieId}) =
      GetListMovieVideo;
}
