import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';
import 'package:the_movie_app/presentation/screens/search_screen/widgets/cast_item.dart';
import 'package:the_movie_app/presentation/screens/search_screen/widgets/movie_item.dart';

class ListItemBySearchType extends StatelessWidget {
  const ListItemBySearchType({
    Key? key,
    required this.currentIndex,
    required this.listTvShows,
    required this.listMovie,
    required this.listPeople,
  }) : super(key: key);

  final ValueNotifier<int> currentIndex;
  final List<MovieEntity> listTvShows;
  final List<MovieEntity> listMovie;
  final List<CastEntity> listPeople;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: currentIndex,
      builder: (context, currentValueListen, _) {
        List listEntity = [];
        switch (currentValueListen) {
          case 0:
            listEntity = listTvShows;
            break;
          case 1:
            listEntity = listMovie;
            break;
          case 2:
            listEntity = listPeople;
            break;
        }
        log('list entity: ${listEntity.length}');
        return Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  log('item index: $index');
                  switch (currentValueListen) {
                    case 0:
                      return MovieItem(
                          movieEntity: listTvShows[index], isMovieType: false);
                    case 1:
                      return MovieItem(
                          movieEntity: listMovie[index], isMovieType: true);
                    case 2:
                      return CastItem(castEntity: listPeople[index]);
                  }
                  return const SizedBox.shrink();
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                itemCount: listEntity.length));
      },
    );
  }
}
