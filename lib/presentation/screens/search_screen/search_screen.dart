import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/search_provider.dart';
import 'package:the_movie_app/presentation/screens/search_screen/widgets/custom_app_bar.dart';
import 'package:the_movie_app/presentation/screens/search_screen/widgets/initial_body.dart';
import 'package:the_movie_app/presentation/screens/search_screen/widgets/search_result.dart';
import 'package:the_movie_app/presentation/shimmer/search_skeleton.dart';

class SearchScreen extends HookConsumerWidget {
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchResult = ref.watch(searchProvider);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100), child: SearchAppBar()),
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: AppColors.darkBlue,
        child: searchResult.map(
          initial: (value) => const InitialBody(),
          loading: (value) => const SearchSkeleton(),
          failed: (value) => Center(
            child: Text(value.message),
          ),
          successful: (value) => SearchResult(
              totalResultTvShow: value.totalResultTvShows,
              totalResultMovie: value.totalResultMovie,
              totalResultPeople: value.totalResultCasts,
              listMovie: value.listMovieEntity,
              listTvShows: value.listTvShowsEntity,
              listPeople: value.listCastEntity),
        ),
      ),
    );
  }
}
