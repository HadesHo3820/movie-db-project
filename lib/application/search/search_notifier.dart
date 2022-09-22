import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/data/models/cast_model.dart';
import 'package:the_movie_app/data/models/cast_pagination_model.dart';
import 'package:the_movie_app/data/models/movie_model.dart';
import 'package:the_movie_app/data/models/movie_pagination_model.dart';
import 'package:the_movie_app/data/models/tvshow_pagination_model.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';
import 'search_state.dart';
import 'search_event.dart';

class SearchNotifier extends StateNotifier<SearchState> {
  final AppUseCase _appUseCase;
  // PaginationModel<MovieModel>? _movieModelPagination;
  // PaginationModel<MovieModel>? _tvShowModelPagination;
  // PaginationModel<CastModel>? _castModelPagination;
  MoviePaginationModel? _movieModelPagination;
  TvShowPaginationModel? _tvShowModelPagination;
  CastPaginationModel? _castModelPagination;
  List<MovieEntity> _listMovies = [];
  List<MovieEntity> _listTvShows = [];
  List<CastEntity> _listCast = [];
  int _totalResultMovie = 0;
  int _totalResultTvShows = 0;
  int _totalResultCasts = 0;
  // ListMovieModel _listMovieModel = ListMovieModel.getInstance();
  // ListMovieModel _listTvShowsModel = ListMovieModel.getInstance();
  // ListCastModel _listCastModel = ListCastModel.getInstance();

  SearchNotifier({required AppUseCase appUseCase})
      : _appUseCase = appUseCase,
        super(const SearchState.initial());

  void mapEventToState({required SearchEvent event}) {
    event.map(
      requestSearch: (event) async {
        state = const SearchState.loading();
        final result = await Future.wait([
          _appUseCase.callData(TvShowPaginationModel.getInstance(),
              '/search/tv?query=${event.searchValue}',
              isSearch: true),
          _appUseCase.callData(MoviePaginationModel.getInstance(),
              '/search/movie?query=${event.searchValue}',
              isSearch: true),
          _appUseCase.callData(CastPaginationModel.getInstance(),
              '/search/person?query=${event.searchValue}',
              isSearch: true),
          // _appUseCase.callDataList(ListMovieModel.getInstance(),
          //     '/search/tv?query=${event.searchValue}'),
          // _appUseCase.callDataList(ListMovieModel.getInstance(),
          //     '/search/movie?query=${event.searchValue}'),
          // _appUseCase.callDataList(ListCastModel.getInstance(),
          //     '/search/person?query=${event.searchValue}')
        ]);
        final resultTvShows = result[0];
        final resultMovies = result[1];
        final resultPeople = result[2];

        resultTvShows.fold((failure) => null, (tvShowModelPagination) {
          _tvShowModelPagination = tvShowModelPagination;
          _totalResultTvShows = _tvShowModelPagination!.totalResult!;
          _listTvShows = _tvShowModelPagination!.results as List<MovieModel>;
        });
        resultMovies.fold((failure) => null, (movieModelPagination) {
          _movieModelPagination = movieModelPagination;
          _totalResultMovie = _movieModelPagination!.totalResult!;
          _listMovies = _movieModelPagination!.results as List<MovieModel>;
        });
        resultPeople.fold((failure) => null, (castModelPagination) {
          _castModelPagination = castModelPagination;
          _totalResultCasts = _castModelPagination!.totalResult!;
          _listCast = _castModelPagination!.results as List<CastModel>;
        });
        state = SearchState.successful(
            listCastEntity: _listCast,
            listMovieEntity: _listMovies,
            listTvShowsEntity: _listTvShows,
            totalResultCasts: _totalResultCasts,
            totalResultMovie: _totalResultMovie,
            totalResultTvShows: _totalResultTvShows);
      },
    );
  }
}
