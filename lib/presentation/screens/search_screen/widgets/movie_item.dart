import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';
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
      height: 150,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 100,
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
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isMovieType
                    ? movieEntity.title ?? 'N/A'
                    : movieEntity.name ?? 'N/A',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                isMovieType
                    ? movieEntity.releaseDate!.isEmpty
                        ? 'N/A'
                        : movieEntity.releaseDate!
                    : movieEntity.firstAirDate!.isEmpty
                        ? 'N/A'
                        : movieEntity.firstAirDate!,
                style: const TextStyle(
                  color: AppColors.secondaryGrey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: Text(
                  movieEntity.overview!.isEmpty ? 'N/A' : movieEntity.overview!,
                  style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      overflow: TextOverflow.fade),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
