import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';

class Skeleton extends StatelessWidget {
  final double? width, height;
  final BoxShape boxShape;
  const Skeleton(
      {Key? key, this.height, this.width, this.boxShape = BoxShape.rectangle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.symmetric(
          vertical: Dimens.xsPaddingVertical,
          horizontal: Dimens.xsPaddingHorizontal),
      decoration: BoxDecoration(
          shape: boxShape,
          color: AppColors.secondaryGrey,
          borderRadius: boxShape != BoxShape.circle
              ? const BorderRadius.all(Radius.circular(10))
              : null),
    );
  }
}
