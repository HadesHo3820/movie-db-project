import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';

class ResultSearchType extends StatelessWidget {
  final String label;
  final int totalResult;
  final int itemIndex;
  final int currentIndex;
  final void Function() onTap;
  const ResultSearchType(
      {Key? key,
      required this.label,
      required this.totalResult,
      required this.itemIndex,
      required this.currentIndex,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        decoration: BoxDecoration(
            color: (currentIndex == itemIndex)
                ? AppColors.tertiaryGrey
                : AppColors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        constraints: const BoxConstraints(maxHeight: 45, maxWidth: 200),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: (currentIndex == itemIndex)
                  ? TextStyles
                      .searchScreenStyle[TextStyleKeys.selectedSearchType]
                  : TextStyles
                      .searchScreenStyle[TextStyleKeys.unselectedSearchType],
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.all(3),
              color: AppColors.orange,
              child: Text(
                '$totalResult',
                style: TextStyles.searchScreenStyle[TextStyleKeys.totalResult],
              ),
            )
          ],
        ),
      ),
    );
  }
}
