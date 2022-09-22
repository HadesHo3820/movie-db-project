import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/assets.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/constant/texts.dart';
import 'package:the_movie_app/presentation/reuse_component/asset_image.dart';

class SplashScreenForeground extends StatelessWidget {
  const SplashScreenForeground({
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
            AssetImageWidget(
                width: SplashScreenDimens.logoWidth,
                height: SplashScreenDimens.logoHeight,
                url: AssetsConstants.appLogo),
            SizedBox(
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
            SizedBox(
              height: Dimens.smPaddingVertical,
            ),
            Text(SplashScreenText.copyright,
                style: TextStyles
                    .splashScreenStyles[TextStyleKeys.copyrightTitle]),
            SizedBox(
              height: SplashScreenDimens.copyrightBottomSpacing,
            ),
          ],
        )
      ],
    );
  }
}
