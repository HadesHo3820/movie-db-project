import 'package:flutter/material.dart';
import 'package:the_movie_app/presentation/shimmer/skeleton.dart';

class TrailerAndPosterSkeleton extends StatelessWidget {
  final double widthItem;
  final double heightItem;

  const TrailerAndPosterSkeleton(
      {Key? key, required this.widthItem, required this.heightItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightItem,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => Skeleton(
                width: widthItem,
                height: heightItem,
              ),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: 3),
    );
  }
}
