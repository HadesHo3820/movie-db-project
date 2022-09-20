import 'package:flutter/material.dart';

class LabelSection extends StatelessWidget {
  final String content;
  const LabelSection({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
          fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
