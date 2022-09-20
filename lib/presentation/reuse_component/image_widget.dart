import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final BoxShape boxShape;
  const ImageWidget({
    Key? key,
    required this.imageUrl,
    required this.width,
    required this.height,
    this.boxShape = BoxShape.rectangle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: imageUrl.contains('N/A')
                ? const AssetImage('assets/images/logo.png') as ImageProvider
                : NetworkImage(imageUrl),
            fit: BoxFit.fill,
            onError: (exception, stackTrace) =>
                const AssetImage('assets/images/logo.png'),
          ),
          shape: boxShape),
    );
  }
}
