import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';
import 'movie_image_state.dart';
import 'movie_image_event.dart';

class MovieImageNotifier extends StateNotifier<MovieImageState> {
  final AppUseCase _appUseCase;
  MovieImageNotifier({required AppUseCase appUseCase})
      : _appUseCase = appUseCase,
        super(const MovieImageState.initial());

  void mapEventToState(MovieImageEvent event) {
    event.map(getListMovieImage: (event) async {
      state = const MovieImageState.loading();
      final result =
          await _appUseCase.callImage("/movie/${event.movieId}/images");
      result.fold(
          (failure) => state = MovieImageState.failed(
              message:
                  "ImageErr: ${ExceptionUtil.throwSpecificMessage(failure)}"),
          (mapListImage) => state = MovieImageState.successful(
              listImagePath: mapListImage['posters']));
    });
  }
}
