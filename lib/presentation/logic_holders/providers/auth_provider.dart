import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/application/authentication/auth_notifier.dart';
import 'package:the_movie_app/application/authentication/auth_state.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';
import 'package:the_movie_app/injection_container.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(appUseCase: sl<AppUseCase>()),
);
