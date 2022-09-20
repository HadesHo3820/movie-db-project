import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/application/movie_detail_cast/movie_cast_notifier.dart';
import 'package:the_movie_app/application/movie_detail_cast/movie_cast_state.dart';
import 'package:the_movie_app/application/movie_detail_image/movie_image_notifier.dart';
import 'package:the_movie_app/application/movie_detail_image/movie_image_state.dart';
import 'package:the_movie_app/application/movie_detail_video/movie_video_notifier.dart';
import 'package:the_movie_app/application/movie_detail_video/movie_video_state.dart';
import 'package:the_movie_app/injection_container.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';

final movieCastProvider =
    StateNotifierProvider<MovieCastNotifier, MovieCastState>(
  (ref) => MovieCastNotifier(appUseCase: sl<AppUseCase>()),
);

final movieVideoProvider =
    StateNotifierProvider<MovieVideoNotifier, MovieVideoState>(
  (ref) => MovieVideoNotifier(appUseCase: sl<AppUseCase>()),
);

final movieImageProvider =
    StateNotifierProvider<MovieImageNotifier, MovieImageState>(
  (ref) => MovieImageNotifier(appUseCase: sl<AppUseCase>()),
);
