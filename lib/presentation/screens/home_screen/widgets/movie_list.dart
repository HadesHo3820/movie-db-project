import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/enums.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/movie_detail_providers.dart';
import 'package:the_movie_app/application/movie_detail_cast/movie_cast_event.dart';
import 'package:the_movie_app/application/movie_detail_image/movie_image_event.dart';
import 'package:the_movie_app/application/movie_detail_video/movie_video_event.dart';

class MovieList extends HookConsumerWidget {
  final List<MovieEntity> listMovieEntity;

  const MovieList({Key? key, required this.listMovieEntity}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              buildListItem(listMovieEntity[index], ref, context),
          separatorBuilder: (context, index) => const SizedBox(
                width: 15,
              ),
          itemCount: listMovieEntity.length),
    );
  }
}

Widget buildListItem(
    MovieEntity movieEntity, WidgetRef ref, BuildContext context) {
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
      height: 160,
      width: 120,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(urlImage), fit: BoxFit.fill)),
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 80,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        color: Colors.black.withOpacity(0.5),
        child: Center(
          child: Text(
            movieEntity.originalTitle!,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
