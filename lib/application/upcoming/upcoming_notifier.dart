import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/application/upcoming/upcoming_event.dart';
import 'package:the_movie_app/application/upcoming/upcoming_state.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';
import 'package:the_movie_app/data/models/list_movie_model.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';

class UpcomingNotifier extends StateNotifier<UpcomingState> {
  final AppUseCase _appUseCase;
  UpcomingNotifier({required AppUseCase appUseCase})
      : _appUseCase = appUseCase,
        super(const UpcomingState.initial());

  void mapEventToState(UpcomingEvent event) {
    event.map(getListUpcoming: (event) async {
      state = const UpcomingState.loading();
      final result = await _appUseCase.callDataList(
          ListMovieModel.getInstance(), ApiConstant.apiTypeLink['upcoming']);
      result.fold((failure) {
        state = UpcomingState.failed(
            message:
                "Upcoming Err: ${ExceptionUtil.throwSpecificMessage(failure)}");
      }, (listMovieModel) {
        state = UpcomingState.successful(listMovieModel: listMovieModel);
      });
    });
  }
}
