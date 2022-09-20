import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/application/playing_movie/playing_notifier.dart';
import 'package:the_movie_app/application/playing_movie/playing_state.dart';
import 'package:the_movie_app/application/popular/popular_notifer.dart';
import 'package:the_movie_app/application/popular/popular_state.dart';
import 'package:the_movie_app/application/top_rated/top_rated_notifier.dart';
import 'package:the_movie_app/application/top_rated/top_rated_state.dart';
import 'package:the_movie_app/application/trending/trending_notifier.dart';
import 'package:the_movie_app/application/trending/trending_state.dart';
import 'package:the_movie_app/application/upcoming/upcoming_notifier.dart';
import 'package:the_movie_app/application/upcoming/upcoming_state.dart';
import 'package:the_movie_app/injection_container.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';

final trendingMovieProvider =
    StateNotifierProvider<TrendingNotifier, TrendingState>(
  (ref) => TrendingNotifier(appUseCase: sl<AppUseCase>()),
);

final popularMovieProvider =
    StateNotifierProvider<PopularNotifier, PopularState>(
  (ref) => PopularNotifier(appUseCase: sl<AppUseCase>()),
);

final topRatedMovieProvider =
    StateNotifierProvider<TopratedNotifier, TopRatedState>(
  (ref) => TopratedNotifier(appUseCase: sl<AppUseCase>()),
);

final playingMovieProvider =
    StateNotifierProvider<PlayingNotifer, PlayingState>(
  (ref) => PlayingNotifer(appUseCase: sl<AppUseCase>()),
);

final upcomingMovieProvider =
    StateNotifierProvider<UpcomingNotifier, UpcomingState>(
  (ref) => UpcomingNotifier(appUseCase: sl<AppUseCase>()),
);
