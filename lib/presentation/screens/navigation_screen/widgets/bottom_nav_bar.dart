import 'package:flutter/material.dart';
import 'package:the_movie_app/presentation/screens/navigation_screen/widgets/bottom_nav_bar_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  final ValueNotifier<int> selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavBarItem(
              iconData: Icons.movie,
              label: "Movie",
              itemIndex: 0,
              currentTabIndex: selectedIndex),
          BottomNavBarItem(
              iconData: Icons.search,
              label: "Search",
              itemIndex: 1,
              currentTabIndex: selectedIndex),
          // BottomNavBarItem(
          //     iconData: Icons.person,
          //     label: "Account",
          //     itemIndex: 2,
          //     currentTabIndex: selectedIndex),
        ],
      ),
    );
  }
}
