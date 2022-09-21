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
          children: [
            Skeleton(
              height: HomeScreenDimens.carouselItemHeight,
              width: HomeScreenDimens.carouselItemWidth,
            ),
            SizedBox(
              width: Dimens.mdPaddingHorizontal,
            ),
            Skeleton(
              height: HomeScreenDimens.mainCarouselItemHeight,
              width: HomeScreenDimens.mainCarouselItemWidth,
            ),
            SizedBox(
              width: Dimens.mdPaddingHorizontal,
            ),
            Skeleton(
              height: HomeScreenDimens.carouselItemHeight,
              width: HomeScreenDimens.carouselItemWidth,
            )
          ],
        ),
        SizedBox(
          height: Dimens.smPaddingVertical,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(
                8,
                (index) => Skeleton(
                      width: Dimens.xsPaddingHorizontal,
                      height: Dimens.xsPaddingHorizontal,
                      boxShape: BoxShape.circle,
                    )),
          ],
        )

        // SizedBox(
        //   height: 10,
        //   width: 60,
        //   child: ListView.separated(
        //       scrollDirection: Axis.horizontal,
        //       physics: const NeverScrollableScrollPhysics(),
        //       itemBuilder: (context, index) => const Skeleton(
        //             width: 5,
        //             height: 5,
        //             boxShape: BoxShape.circle,
        //           ),
        //       separatorBuilder: (context, index) => SizedBox(
        //             width: Dimens.xxsPaddingHorizontal,
        //           ),
        //       itemCount: 8),
        // )
      ],
    );
  }
}
