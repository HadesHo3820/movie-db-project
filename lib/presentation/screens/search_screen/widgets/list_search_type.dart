import 'package:flutter/cupertino.dart';
import 'package:the_movie_app/core/constant/texts.dart';
import 'package:the_movie_app/presentation/screens/search_screen/widgets/result_search_type.dart';

class ListSearchType extends StatelessWidget {
  const ListSearchType({
    Key? key,
    required this.totalResultTvShow,
    required this.totalResultMovie,
    required this.totalResultPeople,
    required this.currentIndex,
  }) : super(key: key);

  final int totalResultTvShow;
  final int totalResultMovie;
  final int totalResultPeople;
  final ValueNotifier<int> currentIndex;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      builder: (context, currentIndex, _) {
        return Wrap(
          direction: Axis.horizontal,
          spacing: 5,
          children: [
            ResultSearchType(
                label: SearchScreenText.tvShowType,
                totalResult: totalResultTvShow,
                itemIndex: 0,
                currentIndex: currentIndex,
                onTap: () {
                  this.currentIndex.value = 0;
                }),
            ResultSearchType(
                label: SearchScreenText.movieType,
                totalResult: totalResultMovie,
                itemIndex: 1,
                currentIndex: currentIndex,
                onTap: () {
                  this.currentIndex.value = 1;
                }),
            ResultSearchType(
                label: SearchScreenText.peopleType,
                totalResult: totalResultPeople,
                itemIndex: 2,
                currentIndex: currentIndex,
                onTap: () {
                  this.currentIndex.value = 2;
                }),
          ],
        );
      },
      valueListenable: currentIndex,
    );
  }
}
