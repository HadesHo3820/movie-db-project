import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';

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
              style: TextStyle(
                  color:
                      (currentIndex == itemIndex) ? Colors.black : Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              padding: const EdgeInsets.all(3),
              color: AppColors.orange,
              child: Text(
                '$totalResult',
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
