import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';

class CustomSignInMethodIconButton extends StatelessWidget {
  final String assetPath;
  const CustomSignInMethodIconButton({
    required this.assetPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 55,
        width: 80,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: AppColors.secondaryDarkBlue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
          onPressed: () {},
          child: Image.asset(
            assetPath,
            width: 36,
            height: 36,
          ),
        ));
  }
}
