import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:the_movie_app/core/constant.dart';

class BottomNavBarItem extends HookWidget {
  final IconData iconData;
  final String label;
  final int itemIndex;
  final ValueNotifier<int> currentTabIndex;

  const BottomNavBarItem(
      {Key? key,
      required this.iconData,
      required this.label,
      required this.itemIndex,
      required this.currentTabIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndexValue = useValueListenable(currentTabIndex);
    return TextButton(
        onPressed: () {
          currentTabIndex.value = itemIndex;
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: currentIndexValue == itemIndex
                  ? Colors.white
                  : AppColors.secondaryGrey,
              size: currentIndexValue == itemIndex ? 28 : 25,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              label,
              style: TextStyle(
                  fontSize: currentIndexValue == itemIndex ? 13 : 11,
                  color: currentIndexValue == itemIndex
                      ? Colors.white
                      : AppColors.secondaryGrey),
            )
          ],
        ));
  }
}
