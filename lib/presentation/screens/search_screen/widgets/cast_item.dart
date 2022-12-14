import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/enums.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/presentation/reuse_component/network_image_widget.dart';

class CastItem extends StatelessWidget {
  CastEntity castEntity;
  CastItem({Key? key, required this.castEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SearchScreenDimens.resultSearchItemHeight,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white),
      child: Row(
        children: [
          NetworkImageWidget(
              imageUrl: ApiConstant.imageProfileApi(
                  castEntity.profilePath ?? '', ProfileSizes.w300),
              width: SearchScreenDimens.searchListItemImageWidth,
              height: SearchScreenDimens.resultSearchItemHeight,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          SizedBox(
            width: Dimens.smPaddingVertical,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                castEntity.name ?? 'N/A',
                style: TextStyles.searchScreenStyle[TextStyleKeys.itemName],
              ),
              SizedBox(
                height: Dimens.verticalPadding,
              ),
              Text(
                'Popularity: ${castEntity.popularity}',
                style:
                    TextStyles.searchScreenStyle[TextStyleKeys.itemPopularity],
              )
            ],
          ))
        ],
      ),
    );
  }
}
