import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_image_event.freezed.dart';

@freezed
class MovieImageEvent with _$MovieImageEvent {
  const factory MovieImageEvent.getListMovieImage({required String movieId}) =
      GetListMovieImage;
}
