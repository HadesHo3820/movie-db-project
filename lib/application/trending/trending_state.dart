import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_app/data/models/list_movie_model.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';

part 'trending_state.freezed.dart';

@freezed
class TrendingState with _$TrendingState {
  const factory TrendingState.initial() = _TrendingInitial;
  const factory TrendingState.loading() = _TrendingLoading;
  const factory TrendingState.failed({required String message}) =
      _TrendingFailed;
  const factory TrendingState.successful(
      {required ListMovieModel listMovieModel}) = _TrendingSuccessful;
}
