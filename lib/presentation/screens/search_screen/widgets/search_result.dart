import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';
import 'package:the_movie_app/presentation/screens/search_screen/widgets/list_item_by_search_type.dart';
import 'package:the_movie_app/presentation/screens/search_screen/widgets/list_search_type.dart';

class SearchResult extends HookConsumerWidget {
  final int totalResultTvShow;
  final int totalResultMovie;
  final int totalResultPeople;
  final List<MovieEntity> listMovie;
  final List<MovieEntity> listTvShows;
  final List<CastEntity> listPeople;
  const SearchResult(
      {Key? key,
      required this.totalResultTvShow,
      required this.totalResultMovie,
      required this.totalResultPeople,
      required this.listMovie,
      required this.listTvShows,
      required this.listPeople})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useValueNotifier(0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          SearchScreenText.searchResultLabel,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        ),
        const SizedBox(
          height: 10,
        ),
        ListSearchType(
            totalResultTvShow: totalResultTvShow,
            totalResultMovie: totalResultMovie,
            totalResultPeople: totalResultPeople,
            currentIndex: currentIndex),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          color: AppColors.secondaryGrey,
        ),
        ListItemBySearchType(
            currentIndex: currentIndex,
            listTvShows: listTvShows,
            listMovie: listMovie,
            listPeople: listPeople)
      ],
    );
  }
}
