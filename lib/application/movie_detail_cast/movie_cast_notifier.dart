import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';
import 'movie_cast_state.dart';
import 'movie_cast_event.dart';

class MovieCastNotifier extends StateNotifier<MovieCastState> {
  final AppUseCase _appUseCase;
  MovieCastNotifier({required AppUseCase appUseCase})
      : _appUseCase = appUseCase,
        super(const MovieCastState.initial());

  void mapEventToState(MovieCastEvent event) {
    event.map(
      getMovieCast: (event) async {
        state = const MovieCastState.loading();
        final result =
            await _appUseCase.callCast('/movie/${event.movieId}/credits');
        result.fold(
            (failure) => state = MovieCastState.failed(
                message:
                    "CastErr: ${ExceptionUtil.throwSpecificMessage(failure)}"),
            (castModel) =>
                state = MovieCastState.successful(creditEntity: castModel));
      },
    );
  }
}
