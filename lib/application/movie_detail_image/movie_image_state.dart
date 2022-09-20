import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_image_state.freezed.dart';

@freezed
class MovieImageState with _$MovieImageState {
  const factory MovieImageState.initial() = _MovieImageInitial;
  const factory MovieImageState.loading() = _MovieImageLoading;
  const factory MovieImageState.failed({required String message}) =
      _MovieImageFailed;

  const factory MovieImageState.successful(
      {required List<String> listImagePath}) = _MovieImageSuccessful;
}
