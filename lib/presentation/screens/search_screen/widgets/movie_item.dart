import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';
import 'package:the_movie_app/presentation/reuse_component/network_image_widget.dart';

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
          NetworkImageWidget(
            imageUrl: movieEntity.backdropPath!,
            width: SearchScreenDimens.searchListItemImageWidth,
            height: SearchScreenDimens.resultSearchItemHeight,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          ),
          SizedBox(
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
              SizedBox(
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
              SizedBox(
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
