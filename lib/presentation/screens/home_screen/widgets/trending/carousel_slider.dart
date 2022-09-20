import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/enums.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/movie_detail_providers.dart';
import 'package:the_movie_app/application/movie_detail_image/movie_image_event.dart';
import 'package:the_movie_app/application/movie_detail_video/movie_video_event.dart';
import 'package:the_movie_app/application/movie_detail_cast/movie_cast_event.dart';

class CarouselSliderWidget extends HookConsumerWidget {
  final List<MovieEntity> listMovieEntity;
  const CarouselSliderWidget({Key? key, required this.listMovieEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeIndex = useState(0);
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: listMovieEntity.length,
            itemBuilder: (context, index, realIndex) {
              final item = listMovieEntity[index];
              return buildCaroselItem(item, context, ref);
            },
            options: CarouselOptions(
              initialPage: 0,
              height: 180,
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              onPageChanged: (index, reason) => activeIndex.value = index,
            )),
        const SizedBox(
          height: 32,
        ),
        buildIndicator(activeIndex.value),
      ],
    );
  }

  Widget buildCaroselItem(
      MovieEntity movieEntity, BuildContext context, WidgetRef ref) {
    final urlImage =
        ApiConstant.imagePosterApi(movieEntity.posterPath!, PosterSizes.w342);
    return InkWell(
      onTap: () {
        String movieId = movieEntity.id.toString();
        ref
            .read(movieImageProvider.notifier)
            .mapEventToState(GetListMovieImage(movieId: movieId));
        ref
            .read(movieVideoProvider.notifier)
            .mapEventToState(GetListMovieVideo(movieId: movieId));
        ref
            .read(movieCastProvider.notifier)
            .mapEventToState(GetMovieCast(movieId: movieId));
        Navigator.of(context)
            .pushNamed(RouteNames.detailScreen, arguments: movieEntity);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(urlImage), fit: BoxFit.fill)),
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          color: Colors.black.withOpacity(0.5),
          child: Center(
            child: Text(
              movieEntity.originalTitle!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIndicator(int activeIndex) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: listMovieEntity.length,
      effect: const SlideEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: AppColors.tertiaryGrey,
          dotColor: AppColors.grey),
    );
  }
}
