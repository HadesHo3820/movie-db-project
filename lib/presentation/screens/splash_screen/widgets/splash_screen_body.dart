import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';

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
              "assets/images/logo.png",
              width: 208,
              height: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
            const Spacer(
              flex: 3,
            ),
            const Text(
              SplashScreenConstant.companyName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(SplashScreenConstant.copyright,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            const SizedBox(
              height: 40,
            ),
          ],
        )
      ],
    );
  }
}
