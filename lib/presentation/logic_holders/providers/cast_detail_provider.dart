import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/application/cast_detail_info/cast_detail_notifier.dart';
import 'package:the_movie_app/application/cast_detail_info/cast_detail_state.dart';
import 'package:the_movie_app/injection_container.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';

final castDetailProvider =
    StateNotifierProvider<CastDetailNotifier, CastDetailState>(
  (ref) => CastDetailNotifier(appUseCase: sl<AppUseCase>()),
);
