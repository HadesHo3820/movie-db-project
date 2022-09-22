import 'package:flutter/material.dart';

class AssetImageWidget extends StatelessWidget {
  final double width;
  final double height;
  final String url;

  const AssetImageWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      url,
      width: width,
      height: height,
      fit: BoxFit.fill,
    );
  }
}
