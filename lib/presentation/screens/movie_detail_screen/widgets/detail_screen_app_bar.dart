import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/enums.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';

class DetailScreenAppBar extends StatelessWidget {
  const DetailScreenAppBar({
    Key? key,
    required this.movieEntity,
  }) : super(key: key);

  final MovieEntity? movieEntity;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: Dimens.sliverAppbarHeight,
      pinned: true,
      backgroundColor: AppColors.darkBlue,
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(Dimens.preferredSizedHeight),
          child: Container(
            height: Dimens.preferredSizedHeight,
            padding: EdgeInsets.symmetric(
                horizontal: Dimens.horizontalPadding,
                vertical: Dimens.xsPaddingVertical),
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  ApiConstant.imagePosterApi(
                    movieEntity!.posterPath!,
                    PosterSizes.w342,
                  ),
                  height: MovieDetailScreenDimens.posterHeight,
                  width: MovieDetailScreenDimens.posterWidth,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  width: Dimens.smPaddingHorizontal,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(movieEntity!.originalTitle!,
                          style: TextStyles.movieDetailScreenStyle[
                              TextStyleKeys.movieTitle]),
                      SizedBox(
                        height: Dimens.xsPaddingVertical,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Action, Adventure, Sci-Fi',
                              style: TextStyles.movieDetailScreenStyle[
                                  TextStyleKeys.genreTitle],
                            ),
                          ),
                          const Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: Dimens.xxsPaddingHorizontal,
                          ),
                          Text(
                            '180 mins',
                            style: TextStyles.movieDetailScreenStyle[
                                TextStyleKeys.durationTitle],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("${movieEntity!.voteCount!} votes",
                              style: TextStyles.movieDetailScreenStyle[
                                  TextStyleKeys.voteTitle]),
                          SizedBox(
                            width: Dimens.xsPaddingHorizontal,
                          ),
                          Container(
                            width: MovieDetailScreenDimens
                                .voteAverageContainerWidth,
                            height: MovieDetailScreenDimens
                                .voteAverageContainerWidth,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Center(
                              child: Text(
                                  movieEntity!.voteAverage!.toStringAsFixed(1),
                                  style: TextStyles.movieDetailScreenStyle[
                                      TextStyleKeys.voteAverage]),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
      flexibleSpace: FlexibleSpaceBar(
        background: Opacity(
          opacity: 0.6,
          child: Image.network(
              ApiConstant.imageBackdropApi(
                  movieEntity!.backdropPath!, BackdropSizes.w780),
              width: double.maxFinite,
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
