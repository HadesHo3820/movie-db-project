import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';
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
            children: const [
              Skeleton(
                height: 36,
                width: 102,
              ),
              SizedBox(
                width: 10,
              ),
              Skeleton(
                height: 36,
                width: 102,
              ),
              SizedBox(
                width: 10,
              ),
              Skeleton(
                height: 36,
                width: 102,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: AppColors.tertiaryGrey,
          ),
          const SizedBox(
            height: 10,
          ),
          buildItemSkeleton(),
          const SizedBox(
            height: 10,
          ),
          buildItemSkeleton(),
          const SizedBox(
            height: 10,
          ),
          buildItemSkeleton(),
        ],
      ),
    );
  }

  Widget buildItemSkeleton() {
    return Row(
      children: [
        const Skeleton(
          height: 141,
          width: 94,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Skeleton(
              height: 23,
              width: 45,
            ),
            SizedBox(
              height: 10,
            ),
            Skeleton(
              height: 16,
              width: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Skeleton(
              height: 50,
              width: 200,
            ),
          ],
        )
      ],
    );
  }
}
