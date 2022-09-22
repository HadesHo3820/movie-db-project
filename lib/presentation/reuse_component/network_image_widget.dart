import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/assets.dart';
import 'package:the_movie_app/presentation/reuse_component/asset_image.dart';

class NetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final BoxShape boxShape;
  final BorderRadius? borderRadius;

  const NetworkImageWidget({
    Key? key,
    required this.imageUrl,
    required this.width,
    required this.height,
    this.borderRadius,
    this.boxShape = BoxShape.rectangle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.fill,
            ),
            borderRadius: borderRadius,
            shape: boxShape),
      ),
      placeholder: (context, url) => AssetImageWidget(
          width: width, height: height, url: AssetsConstants.appLogo),
      errorWidget: (context, url, error) => AssetImageWidget(
          width: width, height: height, url: AssetsConstants.appLogo),
    );
  }
}
