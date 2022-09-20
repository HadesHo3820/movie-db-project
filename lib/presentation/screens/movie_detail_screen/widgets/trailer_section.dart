import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/constant/colors.dart';
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
      loading: (value) =>
          const TrailerAndPosterSkeleton(widthItem: 160, heightItem: 150),
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
      height: 160,
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
                width: 10,
              ),
          itemCount: listVideoEntity.length),
    );
  }

  Widget buildTrailerItem(String videoId, void Function() onTap) {
    String urlThumbnail = ApiConstant.getYtbThumbnailImage(videoId);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(urlThumbnail), fit: BoxFit.fill)),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.darkBlue.withOpacity(0.6)),
          child: const Icon(Icons.play_arrow, color: Colors.white),
        ),
      ),
    );
  }
}
