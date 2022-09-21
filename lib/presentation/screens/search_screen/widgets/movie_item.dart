import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/enums.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';

class MovieItem extends StatelessWidget {
  MovieEntity movieEntity;
  bool isMovieType;
  MovieItem({Key? key, required this.movieEntity, required this.isMovieType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SearchScreenDimens.resultSearchItemHeight,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Row(
        children: [
          Container(
            height: SearchScreenDimens.resultSearchItemHeight,
            width: SearchScreenDimens.searchListItemImageWidth,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: (movieEntity.backdropPath!.isNotEmpty)
                        ? NetworkImage(ApiConstant.imageBackdropApi(
                            movieEntity.backdropPath!, BackdropSizes.w300))
                        : const AssetImage('assets/images/logo.png')
                            as ImageProvider),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
          ),
          const SizedBox(
            width: Dimens.smPaddingHorizontal,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isMovieType
                    ? movieEntity.title ?? 'N/A'
                    : movieEntity.name ?? 'N/A',
                style: TextStyles.searchScreenStyle[TextStyleKeys.itemName],
              ),
              const SizedBox(
                height: Dimens.xsPaddingVertical,
              ),
              Text(
                isMovieType
                    ? movieEntity.releaseDate!.isEmpty
                        ? 'N/A'
                        : movieEntity.releaseDate!
                    : movieEntity.firstAirDate!.isEmpty
                        ? 'N/A'
                        : movieEntity.firstAirDate!,
                style: TextStyles.searchScreenStyle[TextStyleKeys.itemDate],
              ),
              const SizedBox(
                height: Dimens.xsPaddingVertical,
              ),
              Expanded(
                child: Text(
                  movieEntity.overview!.isEmpty ? 'N/A' : movieEntity.overview!,
                  style:
                      TextStyles.searchScreenStyle[TextStyleKeys.itemOverview],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
