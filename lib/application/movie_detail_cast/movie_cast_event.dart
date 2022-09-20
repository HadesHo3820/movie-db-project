import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_cast_event.freezed.dart';

@freezed
class MovieCastEvent with _$MovieCastEvent {
  const factory MovieCastEvent.getMovieCast({required String movieId}) =
      GetMovieCast;
}
