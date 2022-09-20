import 'package:flutter/material.dart';

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
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 5,
        ),
        concreteWidget
      ],
    );
  }
}
