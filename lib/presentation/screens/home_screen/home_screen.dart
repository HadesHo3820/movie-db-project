import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/home_screen_app_bar.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/home_screen_body.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // useEffect(() {
    //   callProviders(ref);
    //   return null;
    // }, const []);
    return Container(
      padding: const EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 0),
      color: AppColors.darkBlue,
      child: Column(
        children: const [
          HomeScreenAppBar(),
          SizedBox(
            height: 15,
          ),
          Expanded(child: HomeScreenBody())
        ],
      ),
    );
  }

  // void callProviders(WidgetRef ref) {
  //   ref
  //       .read(trendingMovieProvider.notifier)
  //       .mapEventToState(const GetListTrending());
  //   ref
  //       .read(popularMovieProvider.notifier)
  //       .mapEventToState(const GetListPopular());
  //   ref
  //       .read(topRatedMovieProvider.notifier)
  //       .mapEventToState(const GetListTopRated());
  //   ref
  //       .read(playingMovieProvider.notifier)
  //       .mapEventToState(const GetListPlaying());
  //   ref
  //       .read(upcomingMovieProvider.notifier)
  //       .mapEventToState(const GetListUpcoming());
  // }
}
