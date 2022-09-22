import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/constant/assets.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/decoration.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/constant/texts.dart';
import 'package:the_movie_app/presentation/reuse_component/asset_image.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AssetImageWidget(
            width: HomeScreenDimens.logoWidth,
            height: HomeScreenDimens.logoHeight,
            url: AssetsConstants.appLogo),
        SizedBox(
          width: Dimens.mdPaddingHorizontal,
        ),
        Expanded(
          child: InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(RouteNames.searchScreen),
            child: Container(
              height: HomeScreenDimens.logoHeight,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColors.secondaryDarkBlue,
                  borderRadius: AppDecoration.borderRadius),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    HomeScreenText.searchTextFieldHintText,
                    style: TextStyles
                        .homeScreenStyle[TextStyleKeys.searchHintText],
                  ),
                  const Icon(
                    Icons.search,
                    color: AppColors.tertiaryGrey,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
