import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/domain/entities/video_entity.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/movie_detail_providers.dart';
import 'package:the_movie_app/presentation/reuse_component/youtube_video_dialog.dart';
import 'package:the_movie_app/presentation/shimmer/trailer_skeleton.dart';

class TrailerSection extends HookConsumerWidget {
  const TrailerSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resultProvider = ref.watch(movieVideoProvider);
    return resultProvider.map(
      initial: (value) => const CircularProgressIndicator(),
      loading: (value) => const TrailerAndPosterSkeleton(
          widthItem: MovieDetailScreenDimens.trailerItemWidth,
          heightItem: MovieDetailScreenDimens.trailerItemHeight),
      failed: (value) => Center(
        child: Text(value.message),
      ),
      successful: (value) => buildListTrailer(
          value.listVideoModel.items!.map((e) => e as VideoEntity).toList(),
          context),
    );
  }

  Widget buildListTrailer(
      List<VideoEntity> listVideoEntity, BuildContext context) {
    return SizedBox(
      height: MovieDetailScreenDimens.trailerListHeight,
      width: double.infinity,
      child: ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              buildTrailerItem(listVideoEntity[index].key!, () {
                showDialog(
                    context: context,
                    builder: (context) => YoutubeVideoDialog(
                        videoId: listVideoEntity[index].key!));
              }),
          separatorBuilder: (context, index) => const SizedBox(
                width: Dimens.smPaddingHorizontal,
              ),
          itemCount: listVideoEntity.length),
    );
  }

  Widget buildTrailerItem(String videoId, void Function() onTap) {
    String urlThumbnail = ApiConstant.getYtbThumbnailImage(videoId);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MovieDetailScreenDimens.trailerItemWidth,
        height: MovieDetailScreenDimens.trailerItemHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(urlThumbnail), fit: BoxFit.fill)),
        child: Container(
          width: MovieDetailScreenDimens.playButtonWidth,
          height: MovieDetailScreenDimens.playButtonWidth,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.darkBlue.withOpacity(0.6)),
          child: const Icon(Icons.play_arrow, color: Colors.white),
        ),
      ),
    );
  }
}
