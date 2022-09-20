import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  final String imageUrl;
  const ImageDialog({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(10),
      child: Image.network(
        imageUrl,
        height: 450,
        width: double.infinity,
        fit: BoxFit.fill,
        errorBuilder: (context, error, stackTrace) =>
            Image.asset("assets/images/logo.png"),
      ),
    );
  }
}
