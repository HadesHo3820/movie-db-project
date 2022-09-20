import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchInitial;
  const factory SearchState.loading() = _SearchLoading;
  const factory SearchState.failed({required String message}) = _SearchFailed;
  const factory SearchState.successful(
      {required List<MovieEntity> listMovieEntity,
      required int totalResultMovie,
      required List<MovieEntity> listTvShowsEntity,
      required int totalResultTvShows,
      required List<CastEntity> listCastEntity,
      required int totalResultCasts}) = _SearchSuccessful;
}
