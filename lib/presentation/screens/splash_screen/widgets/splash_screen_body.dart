import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/assets.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/constant/texts.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColors.darkBlue.withOpacity(0.8),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              AssetsConstants.appLogo,
              width: SplashScreenDimens.logoWidth,
              height: SplashScreenDimens.logoHeight,
            ),
            const SizedBox(
              height: SplashScreenDimens.logoAndCirSpacing,
            ),
            const CircularProgressIndicator(
              color: AppColors.white,
            ),
            const Spacer(
              flex: 3,
            ),
            Text(
              SplashScreenText.companyName,
              style:
                  TextStyles.splashScreenStyles[TextStyleKeys.copyrightTitle],
            ),
            const SizedBox(
              height: Dimens.smPaddingVertical,
            ),
            Text(SplashScreenText.copyright,
                style: TextStyles
                    .splashScreenStyles[TextStyleKeys.copyrightTitle]),
            const SizedBox(
              height: SplashScreenDimens.copyrightBottomSpacing,
            ),
          ],
        )
      ],
    );
  }
}
