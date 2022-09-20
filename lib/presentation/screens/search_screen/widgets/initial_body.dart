import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/assets.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/constant/texts.dart';

class InitialBody extends StatelessWidget {
  const InitialBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          AssetsConstants.appLogo,
          height: 150,
          width: 200,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          SearchScreenText.welcomeText,
          style: TextStyles.searchScreenStyle[TextStyleKeys.welcomeTitle],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          SearchScreenText.introductionText,
          textAlign: TextAlign.center,
          style: TextStyles.searchScreenStyle[TextStyleKeys.introTitle],
        )
      ],
    );
  }
}
