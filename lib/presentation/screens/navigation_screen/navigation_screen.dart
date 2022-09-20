import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/presentation/screens/home_screen/home_screen.dart';
import 'package:the_movie_app/presentation/screens/navigation_screen/widgets/bottom_nav_bar.dart';
import 'package:the_movie_app/presentation/screens/search_screen/search_screen.dart';

import '../../../application/playing_movie/playing_event.dart';
import '../../../application/popular/popular_event.dart';
import '../../../application/top_rated/top_rated_event.dart';
import '../../../application/trending/trending_event.dart';
import '../../../application/upcoming/upcoming_event.dart';
import '../../logic_holders/providers/list_movie_providers.dart';

class NavigationScreen extends HookConsumerWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  static const List<Widget> screenList = [
    HomeScreen(),
    SearchScreen(),
    // AccountScreen()
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      callProviders(ref);
      return null;
    }, const []);
    final selectedIndex = useValueNotifier(0);
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      bottomNavigationBar: BottomNavBar(selectedIndex: selectedIndex),
      body: HookBuilder(
        builder: (_) {
          final currentIndexValue = useValueListenable(selectedIndex);
          return screenList[currentIndexValue];
        },
      ),
    );
  }

  void callProviders(WidgetRef ref) {
    ref
        .read(trendingMovieProvider.notifier)
        .mapEventToState(const GetListTrending());
    ref
        .read(popularMovieProvider.notifier)
        .mapEventToState(const GetListPopular());
    ref
        .read(topRatedMovieProvider.notifier)
        .mapEventToState(const GetListTopRated());
    ref
        .read(playingMovieProvider.notifier)
        .mapEventToState(const GetListPlaying());
    ref
        .read(upcomingMovieProvider.notifier)
        .mapEventToState(const GetListUpcoming());
  }
}
