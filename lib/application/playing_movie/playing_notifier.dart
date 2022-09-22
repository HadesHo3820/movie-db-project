import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';
import 'package:the_movie_app/data/models/list_movie_model.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';
import 'package:the_movie_app/application/playing_movie/playing_event.dart';
import 'package:the_movie_app/application/playing_movie/playing_state.dart';

class PlayingNotifer extends StateNotifier<PlayingState> {
  final AppUseCase _appUseCase;
  PlayingNotifer({required AppUseCase appUseCase})
      : _appUseCase = appUseCase,
        super(const PlayingState.initial());

  void mapEventToState(PlayingEvent event) {
    event.map(getListPopular: (event) async {
      state = const PlayingState.loading();
      final result = await _appUseCase.callDataList(
          ListMovieModel.getInstance(), ApiConstant.apiTypeLink['nowplaying']);
      result.fold((failure) {
        state = PlayingState.failed(
            message:
                "NowPlaying Err: ${ExceptionUtil.throwSpecificMessage(failure)}");
      }, (listMovieModel) {
        state = PlayingState.successful(listMovieModel: listMovieModel);
      });
    });
  }
}
