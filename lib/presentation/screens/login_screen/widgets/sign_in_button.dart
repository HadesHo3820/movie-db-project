import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';

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
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              primary: AppColors.lightBlue),
          child: Text(
            labelButton,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
    );
  }
}
