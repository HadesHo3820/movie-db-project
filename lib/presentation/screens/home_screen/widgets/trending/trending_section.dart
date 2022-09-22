import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/list_movie_providers.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/trending/carousel_slider.dart';
import 'package:the_movie_app/presentation/shimmer/carousel_skeleton.dart';

class TrendingSection extends HookConsumerWidget {
  const TrendingSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trendingState = ref.watch(trendingMovieProvider);
    return trendingState.map(
      initial: (value) => const CircularProgressIndicator(),
      loading: (value) => const CarouselSkeleton(),
      failed: (value) => Center(child: Text(value.message)),
      successful: (value) {
        return CarouselSliderWidget(
            listMovieEntity: value.listMovieModel.items!
                .map((e) => e as MovieEntity)
                .toList());
      },
    );
  }
}
