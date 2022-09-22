import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/application/trending/trending_event.dart';
import 'package:the_movie_app/application/trending/trending_state.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';
import 'package:the_movie_app/data/models/list_movie_model.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';

class TrendingNotifier extends StateNotifier<TrendingState> {
  final AppUseCase _appUseCase;
  TrendingNotifier({required AppUseCase appUseCase})
      : _appUseCase = appUseCase,
        super(const TrendingState.initial());

  void mapEventToState(TrendingEvent event) {
    event.map(getListTrending: (event) async {
      state = const TrendingState.loading();
      final result = await _appUseCase.callDataList(
          ListMovieModel.getInstance(), ApiConstant.apiTypeLink['trending']);
      result.fold((failure) {
        state = TrendingState.failed(
            message:
                "Trending Err: ${ExceptionUtil.throwSpecificMessage(failure)}");
      }, (listMovieModel) {
        state = TrendingState.successful(listMovieModel: listMovieModel);
      });
    });
  }
}
