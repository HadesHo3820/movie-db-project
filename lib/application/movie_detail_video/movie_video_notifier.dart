import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';
import 'package:the_movie_app/data/models/list_video_model.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';
import 'movie_video_state.dart';
import 'movie_video_event.dart';

class MovieVideoNotifier extends StateNotifier<MovieVideoState> {
  final AppUseCase _appUseCase;

  MovieVideoNotifier({required AppUseCase appUseCase})
      : _appUseCase = appUseCase,
        super(const MovieVideoState.initial());

  void mapEventToState(MovieVideoEvent event) {
    event.map(getListMovieVideo: (event) async {
      state = const MovieVideoState.loading();
      final result = await _appUseCase.callDataList(
          ListVideoModel.getInstance(), "/movie/${event.movieId}/videos");
      result.fold(
          (failure) => state = MovieVideoState.failed(
              message:
                  "VideoErr: ${ExceptionUtil.throwSpecificMessage(failure)}"),
          (listVideoModel) => state =
              MovieVideoState.successful(listVideoModel: listVideoModel));
    });
  }
}
