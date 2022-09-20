import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';
import 'package:the_movie_app/data/models/list_movie_model.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';
import 'package:the_movie_app/application/popular/popular_event.dart';
import 'package:the_movie_app/application/popular/popular_state.dart';

class PopularNotifier extends StateNotifier<PopularState> {
  final AppUseCase _appUseCase;
  PopularNotifier({required AppUseCase appUseCase})
      : _appUseCase = appUseCase,
        super(const PopularState.initial());

  void mapEventToState(PopularEvent event) {
    event.map(getListPopular: (event) async {
      state = const PopularState.loading();
      final result = await _appUseCase.callDataList(
          ListMovieModel.getInstance(), ApiConstant.apiTypeLink['popular']);
      result.fold((failure) {
        state = PopularState.failed(
            message:
                "Popular Err: ${ExceptionUtil.throwSpecificMessage(failure)}");
      }, (listMovieModel) {
        state = PopularState.successful(listMovieModel: listMovieModel);
      });
    });
  }
}
