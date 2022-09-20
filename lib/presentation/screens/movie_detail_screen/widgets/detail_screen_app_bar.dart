import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';
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
      expandedHeight: 250,
      pinned: true,
      backgroundColor: AppColors.darkBlue,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: Container(
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  ApiConstant.imagePosterApi(
                    movieEntity!.posterPath!,
                    PosterSizes.w342,
                  ),
                  height: 130,
                  width: 90,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(movieEntity!.originalTitle!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18)),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Expanded(
                            child: Text(
                              'Action, Adventure, Sci-Fi',
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.tertiaryGrey),
                            ),
                          ),
                          Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '180 mins',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 12),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("${movieEntity!.voteCount!} votes",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16)),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 42,
                            height: 42,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Center(
                              child: Text(
                                  movieEntity!.voteAverage!.toStringAsFixed(1),
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
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
