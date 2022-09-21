import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/texts.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/concrete_section.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/playing/playing_section.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/popular/popular_section.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/top_rated/top_rated_section.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/trending/trending_section.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/upcoming/upcoming_section.dart';

class HomeScreenBody extends HookConsumerWidget {
  const HomeScreenBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          ConcreteSection(
              labelText: HomeScreenText.trendingLabel,
              sectionContent: TrendingSection()),
          SizedBox(
            height: Dimens.verticalPadding,
          ),
          ConcreteSection(
              labelText: HomeScreenText.popularLabel,
              sectionContent: PopularSection()),
          SizedBox(
            height: Dimens.verticalPadding,
          ),
          ConcreteSection(
              labelText: HomeScreenText.topRateLabel,
              sectionContent: TopRatedSection()),
          SizedBox(
            height: Dimens.verticalPadding,
          ),
          ConcreteSection(
              labelText: HomeScreenText.playingMovieLabel,
              sectionContent: PlayingSection()),
          SizedBox(
            height: Dimens.verticalPadding,
          ),
          ConcreteSection(
              labelText: HomeScreenText.upcomingMovieLabel,
              sectionContent: UpcomingSection()),
        ],
      ),
    );
  }
}
