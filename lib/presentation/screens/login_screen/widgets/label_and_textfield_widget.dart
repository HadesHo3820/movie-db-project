import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';

class LabelAndTextField extends HookWidget {
  final String label;
  final TextEditingController controller;
  final bool isPasswordType;
  final String hintText;
  const LabelAndTextField({
    required this.label,
    required this.controller,
    required this.hintText,
    required this.isPasswordType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isVisible = useState(isPasswordType ? true : false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.loginScreenStyles[TextStyleKeys.textfieldLabel],
        ),
        SizedBox(
          height: Dimens.xsPaddingVertical,
        ),
        Container(
          width: double.infinity,
          height: LoginScreenDimens.textFieldHeight,
          color: Colors.white,
          padding: EdgeInsets.only(left: Dimens.xsPaddingHorizontal),
          child: TextField(
            controller: controller,
            cursorColor: AppColors.darkBlue,
            obscureText: isVisible.value,
            decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                suffixIcon: isPasswordType
                    ? IconButton(
                        onPressed: () {
                          isVisible.value = !isVisible.value;
                        },
                        icon: Icon(isVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off))
                    : null),
          ),
        )
      ],
    );
  }
}
