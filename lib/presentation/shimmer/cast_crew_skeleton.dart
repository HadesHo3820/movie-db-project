import 'package:flutter/cupertino.dart';
import 'package:the_movie_app/presentation/shimmer/skeleton.dart';

class CastAndCrewSkeleton extends StatelessWidget {
  final double widthItem;
  final double heightItem;

  const CastAndCrewSkeleton(
      {Key? key, required this.widthItem, required this.heightItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightItem + 32,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => buildItem(),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: 3),
    );
  }

  Widget buildItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Skeleton(
          width: widthItem,
          height: heightItem,
        ),
        const SizedBox(
          height: 5,
        ),
        Skeleton(
          width: widthItem - 20,
          height: 10,
        ),
        const SizedBox(
          height: 5,
        ),
        Skeleton(
          width: widthItem - 40,
          height: 10,
        ),
      ],
    );
  }
}
