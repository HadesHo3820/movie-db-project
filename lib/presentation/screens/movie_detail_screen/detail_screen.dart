import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/dimens.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/constant/texts.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';
import 'package:the_movie_app/presentation/screens/movie_detail_screen/widgets/cast_section.dart';
import 'package:the_movie_app/presentation/screens/movie_detail_screen/widgets/concrete_detail_section.dart';
import 'package:the_movie_app/presentation/screens/movie_detail_screen/widgets/detail_screen_app_bar.dart';
import 'package:the_movie_app/presentation/screens/movie_detail_screen/widgets/poster_section.dart';
import 'package:the_movie_app/presentation/screens/movie_detail_screen/widgets/trailer_section.dart';

class DetailScreen extends HookConsumerWidget {
  MovieEntity? movieEntity;
  DetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    movieEntity = ModalRoute.of(context)!.settings.arguments as MovieEntity;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            DetailScreenAppBar(movieEntity: movieEntity),
          ];
        },
        body: Container(
          color: AppColors.darkBlue,
          padding: EdgeInsets.symmetric(
              vertical: Dimens.verticalPadding,
              horizontal: Dimens.horizontalPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ConcreteDetailSection(
                    label: DetailScreenText.overviewLabel,
                    concreteWidget: Text(
                      movieEntity!.overview!,
                      style: TextStyles.movieDetailScreenStyle[
                          TextStyleKeys.overviewContent],
                    )),
                SizedBox(
                  height: Dimens.mdPaddingVertical,
                ),
                const ConcreteDetailSection(
                    label: DetailScreenText.trailerLabel,
                    concreteWidget: TrailerSection()),
                SizedBox(
                  height: Dimens.mdPaddingVertical,
                ),
                const ConcreteDetailSection(
                    label: DetailScreenText.posterLabel,
                    concreteWidget: PosterSection()),
                SizedBox(
                  height: Dimens.mdPaddingVertical,
                ),
                const ConcreteDetailSection(
                    label: DetailScreenText.castLabel,
                    concreteWidget: CastAndCrewSection(isCast: true)),
                SizedBox(
                  height: Dimens.mdPaddingVertical,
                ),
                const ConcreteDetailSection(
                    label: DetailScreenText.filmCrewLabel,
                    concreteWidget: CastAndCrewSection(isCast: false)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
