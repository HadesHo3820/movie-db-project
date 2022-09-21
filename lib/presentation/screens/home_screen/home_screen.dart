import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/home_screen_app_bar.dart';
import 'package:the_movie_app/presentation/screens/home_screen/widgets/home_screen_body.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.only(
          top: HomeScreenDimens.screenPaddingTop,
          right: Dimens.horizontalPadding,
          left: Dimens.horizontalPadding),
      color: AppColors.darkBlue,
      child: Column(
        children: [
          const HomeScreenAppBar(),
          SizedBox(
            height: Dimens.verticalPadding,
          ),
          const Expanded(child: HomeScreenBody())
        ],
      ),
    );
  }
}
