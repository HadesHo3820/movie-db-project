import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/list_movie_providers.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/movie_list.dart';
import 'package:the_movie_app/presentation/shimmer/movie_list_skeleton.dart';

class PopularSection extends ConsumerWidget {
  const PopularSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playingState = ref.watch(popularMovieProvider);
    return playingState.map(
      initial: (value) => const CircularProgressIndicator(),
      loading: (value) => const MovieListSkeleton(),
      failed: (value) => Center(child: Text(value.message)),
      successful: (value) => MovieList(
          listMovieEntity: value.listMovieModel.items!
              .map((e) => e as MovieEntity)
              .toList()),
    );
  }
}
