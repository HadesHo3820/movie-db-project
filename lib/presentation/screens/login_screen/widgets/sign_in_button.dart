import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/decoration.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';

class SignInButton extends StatelessWidget {
  final void Function()? onPressed;
  final String labelButton;
  const SignInButton({
    required this.onPressed,
    required this.labelButton,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: LoginScreenDimens.signInMethodButtonHeight,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: LoginScreenDecoration.borderRadiusButton),
              primary: AppColors.lightBlue),
          child: Text(
            labelButton,
            style: TextStyles.loginScreenStyles[TextStyleKeys.buttonLabel],
          )),
    );
  }
}
