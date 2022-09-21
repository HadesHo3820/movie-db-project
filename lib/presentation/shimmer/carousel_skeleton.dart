import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/presentation/shimmer/skeleton.dart';

class CarouselSkeleton extends StatelessWidget {
  const CarouselSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Skeleton(
              height: 150,
              width: 80,
            ),
            SizedBox(
              width: Dimens.mdPaddingHorizontal,
            ),
            Skeleton(
              height: 180,
              width: 160,
            ),
            SizedBox(
              width: Dimens.mdPaddingHorizontal,
            ),
            Skeleton(
              height: 150,
              width: 80,
            )
          ],
        ),
        const SizedBox(
          height: Dimens.smPaddingVertical,
        ),
        SizedBox(
          height: 10,
          width: 60,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const Skeleton(
                    width: 5,
                    height: 5,
                    boxShape: BoxShape.circle,
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    width: Dimens.xxsPaddingHorizontal,
                  ),
              itemCount: 8),
        )
      ],
    );
  }
}
