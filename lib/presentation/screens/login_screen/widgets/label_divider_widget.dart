import 'package:flutter/material.dart';

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
        const SizedBox(
          width: 7,
        ),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 15)),
        const SizedBox(
          width: 7,
        ),
        const Expanded(
            child: Divider(
          color: Colors.white,
        )),
      ],
    );
  }
}
