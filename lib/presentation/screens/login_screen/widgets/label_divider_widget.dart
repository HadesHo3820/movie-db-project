import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/dimens.dart';

class LabelWithDivider extends StatelessWidget {
  final String label;
  const LabelWithDivider({
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Divider(
          color: Colors.white,
        )),
        SizedBox(
          width: Dimens.xsPaddingHorizontal,
        ),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 15)),
        SizedBox(
          width: Dimens.xsPaddingHorizontal,
        ),
        const Expanded(
            child: Divider(
          color: Colors.white,
        )),
      ],
    );
  }
}
