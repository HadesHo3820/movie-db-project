import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';

class CustomSignInMethodIconButton extends StatelessWidget {
  final String assetPath;
  const CustomSignInMethodIconButton({
    required this.assetPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: LoginScreenDimens.signInMethodButtonHeight,
        width: LoginScreenDimens.signInMethodButtonWidth,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: AppColors.secondaryDarkBlue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
          onPressed: () {},
          child: Image.asset(
            assetPath,
            width: LoginScreenDimens.iconSignInMethodButtonWidth,
            height: LoginScreenDimens.iconSignInMethodButtonHeight,
          ),
        ));
  }
}
