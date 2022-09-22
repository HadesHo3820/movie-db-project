import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/presentation/shimmer/skeleton.dart';

class SearchSkeleton extends StatelessWidget {
  const SearchSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              Skeleton(
                height: SearchScreenDimens.searchTypeItemSkeletonHeight,
                width: SearchScreenDimens.searchTypeItemSkeletonWidth,
              ),
              SizedBox(
                width: Dimens.smPaddingHorizontal,
              ),
              Skeleton(
                height: SearchScreenDimens.searchTypeItemSkeletonHeight,
                width: SearchScreenDimens.searchTypeItemSkeletonWidth,
              ),
              SizedBox(
                width: Dimens.smPaddingHorizontal,
              ),
              Skeleton(
                height: SearchScreenDimens.searchTypeItemSkeletonHeight,
                width: SearchScreenDimens.searchTypeItemSkeletonWidth,
              ),
            ],
          ),
          SizedBox(
            height: Dimens.smPaddingVertical,
          ),
          const Divider(
            color: AppColors.tertiaryGrey,
          ),
          SizedBox(
            height: Dimens.smPaddingVertical,
          ),
          buildItemSkeleton(),
          SizedBox(
            height: Dimens.smPaddingVertical,
          ),
          buildItemSkeleton(),
          SizedBox(height: Dimens.smPaddingVertical),
          buildItemSkeleton(),
        ],
      ),
    );
  }

  Widget buildItemSkeleton() {
    return Row(
      children: [
        Skeleton(
          height: SearchScreenDimens.searchListItemImageSkeletonHeight,
          width: SearchScreenDimens.searchListItemImageSkeletonWidth,
        ),
        SizedBox(
          width: Dimens.smPaddingHorizontal,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Skeleton(
              height: SearchScreenDimens.searchListItemTitleSkeletonHeight,
              width: SearchScreenDimens.searchListItemTitleSkeletonWidth,
            ),
            SizedBox(
              height: Dimens.smPaddingVertical,
            ),
            Skeleton(
              height: SearchScreenDimens.searchListItemDateSkeletonHeight,
              width: SearchScreenDimens.searchListItemDateSkeletonWidth,
            ),
            SizedBox(
              height: Dimens.smPaddingVertical,
            ),
            Skeleton(
              height: SearchScreenDimens.searchListItemOverviewSkeletonHeight,
              width: SearchScreenDimens.searchListItemOverviewSkeletonWidth,
            ),
          ],
        )
      ],
    );
  }
}
