import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_app/data/models/list_movie_model.dart';
part 'popular_state.freezed.dart';

@freezed
class PopularState with _$PopularState {
  const factory PopularState.initial() = _PopularInitial;
  const factory PopularState.loading() = _PolularLoading;
  const factory PopularState.failed({required String message}) = _PopularFailed;
  const factory PopularState.successful(
      {required ListMovieModel listMovieModel}) = _PopularSuccesful;
}
