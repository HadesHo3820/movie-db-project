import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: 48,
          height: 35,
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(RouteNames.searchScreen),
            child: Container(
              height: 35,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColors.secondaryDarkBlue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    HomeScreenText.searchTextFieldHintText,
                    style: TextStyle(
                        fontSize: 13,
                        color: AppColors.secondaryGrey,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  Icon(
                    Icons.search,
                    color: AppColors.tertiaryGrey,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
