import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/enums.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/movie_detail_providers.dart';
import 'package:the_movie_app/presentation/reuse_component/image_dialog.dart';
import 'package:the_movie_app/presentation/shimmer/trailer_skeleton.dart';

class PosterSection extends HookConsumerWidget {
  const PosterSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resultProvier = ref.watch(movieImageProvider);
    return resultProvier.map(
      initial: (value) => const CircularProgressIndicator(),
      loading: (value) => const TrailerAndPosterSkeleton(
          widthItem: MovieDetailScreenDimens.castAndCrewSkeletonWidth,
          heightItem: MovieDetailScreenDimens.trailerItemHeight),
      failed: (value) => Center(
        child: Text(value.message),
      ),
      successful: (value) => buildListPoster(value.listImagePath, context),
    );
  }

  Widget buildListPoster(List<String> result, BuildContext context) {
    return SizedBox(
      height: MovieDetailScreenDimens.trailerItemHeight,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final imageUrl =
                ApiConstant.imagePosterApi(result[index], PosterSizes.w500);
            return buildPosterItem(imageUrl, () {
              showDialog(
                  context: context,
                  builder: (context) => ImageDialog(imageUrl: imageUrl));
            });
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: Dimens.smPaddingHorizontal,
              ),
          itemCount: result.length),
    );
  }

  Widget buildPosterItem(String imageUrl, void Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Image.network(
        imageUrl,
        width: MovieDetailScreenDimens.posterItemWidth,
        height: MovieDetailScreenDimens.trailerItemHeight,
        fit: BoxFit.cover,
      ),
    );
  }
}
