import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';

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
          "assets/images/logo.png",
          height: 150,
          width: 200,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          SearchScreenText.welcomeText,
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          SearchScreenText.introductionText,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
