import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/label_section.dart';

class ConcreteSection extends HookConsumerWidget {
  final String labelText;
  final Widget sectionContent;
  const ConcreteSection(
      {Key? key, required this.labelText, required this.sectionContent})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelSection(content: labelText),
        const SizedBox(
          height: 10,
        ),
        sectionContent
      ],
    );
  }
}
