import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/constant/assets.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/constant/texts.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetsConstants.appLogo,
          width: HomeScreenDimens.logoWidth,
          height: HomeScreenDimens.logoHeight,
        ),
        const SizedBox(
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
                  borderRadius: BorderRadius.all(Radius.circular(10))),
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
