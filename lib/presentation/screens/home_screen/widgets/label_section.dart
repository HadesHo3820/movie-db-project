import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';

class LabelSection extends StatelessWidget {
  final String content;
  const LabelSection({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyles.appStyle[TextStyleKeys.sectionTitle],
    );
  }
}
