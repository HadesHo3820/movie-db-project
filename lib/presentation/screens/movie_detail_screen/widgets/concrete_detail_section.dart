import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';

class ConcreteDetailSection extends StatelessWidget {
  final String label;
  final Widget concreteWidget;

  const ConcreteDetailSection(
      {Key? key, required this.label, required this.concreteWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.appStyle[TextStyleKeys.sectionTitle],
        ),
        SizedBox(
          height: Dimens.xsPaddingVertical,
        ),
        concreteWidget
      ],
    );
  }
}
