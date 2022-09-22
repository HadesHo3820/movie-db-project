import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/decoration.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/presentation/reuse_component/asset_image.dart';

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
                  borderRadius: AppDecoration.borderRadius)),
          onPressed: () {},
          child: AssetImageWidget(
              width: LoginScreenDimens.iconSignInMethodButtonWidth,
              height: LoginScreenDimens.iconSignInMethodButtonHeight,
              url: assetPath),
        ));
  }
}
