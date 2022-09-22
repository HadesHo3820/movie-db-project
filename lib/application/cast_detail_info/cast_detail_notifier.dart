import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';

import 'cast_detail_state.dart';
import 'cast_detail_event.dart';

class CastDetailNotifier extends StateNotifier<CastDetailState> {
  final AppUseCase _appUseCase;
  CastDetailNotifier({
    required AppUseCase appUseCase,
  })  : _appUseCase = appUseCase,
        super(const CastDetailState.initial());

  void mapEventToState(CastDetailEvent event) {
    event.map(
      getCastInfo: (value) async {
        state = const CastDetailState.loading();
        final result =
            await _appUseCase.callCareer(event.castEntity, event.isCast);
        result.fold(
            (failure) => state = CastDetailState.failed(
                message:
                    "CastDetailErr: ${ExceptionUtil.throwSpecificMessage(failure)}"),
            (castModel) =>
                state = CastDetailState.successful(castEntity: castModel));
      },
    );
  }
}
