import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';
import 'package:the_movie_app/data/models/list_movie_model.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';
import 'package:the_movie_app/application/top_rated/top_rated_event.dart';
import 'package:the_movie_app/application/top_rated/top_rated_state.dart';

class TopratedNotifier extends StateNotifier<TopRatedState> {
  final AppUseCase _appUseCase;
  TopratedNotifier({required AppUseCase appUseCase})
      : _appUseCase = appUseCase,
        super(const TopRatedState.initial());

  void mapEventToState(TopRatedEvent event) {
    event.map(getListTopRated: (event) async {
      state = const TopRatedState.loading();
      final result = await _appUseCase.callDataList(
          ListMovieModel.getInstance(), ApiConstant.apiTypeLink['toprate']);
      result.fold((failure) {
        state = TopRatedState.failed(
            message:
                "TopRated Err: ${ExceptionUtil.throwSpecificMessage(failure)}");
      }, (listMovieModel) {
        state = TopRatedState.successful(listMovieModel: listMovieModel);
      });
    });
  }
}
