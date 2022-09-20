import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/constant/assets.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/constant/texts.dart';
import 'package:the_movie_app/core/enums.dart';
import 'package:the_movie_app/data/models/cast_model.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/presentation/reuse_component/image_widget.dart';

class CastDetailAppBar extends StatelessWidget {
  final CastEntity castEntity;
  const CastDetailAppBar({Key? key, required this.castEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250,
      pinned: true,
      backgroundColor: AppColors.darkBlue,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: Container(
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageWidget(
                    imageUrl: ApiConstant.imageProfileApi(
                        castEntity.profilePath ?? "N/A", ProfileSizes.w300),
                    width: 90,
                    height: 90,
                    boxShape: BoxShape.circle),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      castEntity.name ?? "N/A",
                      style: TextStyles
                          .castDetailScreenStyle[TextStyleKeys.castName],
                    ),
                    buildCastInfoItem(CastDetailScreenText.birthdayTitle,
                        castEntity.birthday ?? "N/A"),
                    buildCastInfoItem(CastDetailScreenText.placeOfBirthTitle,
                        castEntity.placeOfBirth ?? "N/A"),
                    buildCastInfoItem(CastDetailScreenText.popularityTitle,
                        castEntity.popularity.toString()),
                    buildCastInfoItem(
                        CastDetailScreenText.knowForTitle,
                        departmentValues.reverse[castEntity.department] ??
                            "N/A"),
                  ],
                ))
              ],
            ),
          )),
      flexibleSpace: FlexibleSpaceBar(
        background: Opacity(
          opacity: 0.6,
          child: Image.network(
            ApiConstant.imageProfileApi(
                castEntity.profilePath ?? 'N/A', ProfileSizes.w300),
            width: double.infinity,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) =>
                Image.asset(AssetsConstants.appLogo),
          ),
        ),
      ),
    );
  }

  Widget buildCastInfoItem(String title, String content) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.castDetailScreenStyle[TextStyleKeys.labelTitle],
          ),
          const SizedBox(
            width: 2,
          ),
          Expanded(
            child: Text(
              content,
              style: TextStyles.castDetailScreenStyle[TextStyleKeys.labelValue],
            ),
          ),
        ],
      );
}
