import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/enums.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/cast_detail_provider.dart';
import 'package:the_movie_app/presentation/logic_holders/providers/movie_detail_providers.dart';
import 'package:the_movie_app/presentation/reuse_component/network_image_widget.dart';
import 'package:the_movie_app/presentation/shimmer/cast_crew_skeleton.dart';
import 'package:the_movie_app/application/cast_detail_info/cast_detail_event.dart';

class CastAndCrewSection extends HookConsumerWidget {
  final bool isCast;
  const CastAndCrewSection({Key? key, required this.isCast}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resultProvider = ref.watch(movieCastProvider);
    return resultProvider.map(
      initial: (value) => const CircularProgressIndicator(),
      loading: (value) => CastAndCrewSkeleton(
          widthItem: MovieDetailScreenDimens.castAndCrewSkeletonWidth,
          heightItem: MovieDetailScreenDimens.trailerItemHeight),
      failed: (value) => Center(
        child: Text(value.message),
      ),
      successful: (value) => buildListCast(
          isCast ? value.creditEntity.cast! : value.creditEntity.crew!,
          context,
          ref),
    );
  }

  Widget buildListCast(
      List<CastEntity> result, BuildContext context, WidgetRef ref) {
    return Container(
      width: MediaQuery.of(context).size.width,
      constraints: BoxConstraints(
          maxHeight: MovieDetailScreenDimens.listCastAndCrewMaxHeight),
      child: ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildItem(
                castEntity: result[index],
                onTap: () {
                  ref.read(castDetailProvider.notifier).mapEventToState(
                      GetCastInfo(castEntity: result[index], isCast: isCast));
                  Navigator.of(context).pushNamed(RouteNames.castDetailScreen);
                },
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: Dimens.smPaddingHorizontal,
              ),
          itemCount: result.length),
    );
  }

  Widget buildItem(
      {required CastEntity castEntity, required void Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: MovieDetailScreenDimens.castAndCrewSkeletonWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NetworkImageWidget(
                imageUrl: ApiConstant.imageProfileApi(
                    castEntity.profilePath ?? '', ProfileSizes.w300),
                width: MovieDetailScreenDimens.castAndCrewSkeletonWidth,
                height: MovieDetailScreenDimens.trailerItemHeight),
            SizedBox(
              height: Dimens.smPaddingVertical,
            ),
            Text(
              castEntity.name!,
              style: TextStyles
                  .movieDetailScreenStyle[TextStyleKeys.castAndCrewName],
            ),
            SizedBox(
              height: Dimens.xsPaddingVertical,
            ),
            Text(
              isCast ? castEntity.character! : castEntity.job!,
              style: TextStyles
                  .movieDetailScreenStyle[TextStyleKeys.castAndCrewCharacter],
            ),
          ],
        ),
      ),
    );
  }
}
