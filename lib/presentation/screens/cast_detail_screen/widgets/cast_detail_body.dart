import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant/colors.dart';
import 'package:the_movie_app/core/constant/keys.dart';
import 'package:the_movie_app/core/constant/text_styles.dart';
import 'package:the_movie_app/core/constant/texts.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';
import 'package:the_movie_app/presentation/screens/cast_detail_screen/widgets/cast_detail_app_bar.dart';

class CastDetailBody extends StatelessWidget {
  final CastEntity castEntity;
  const CastDetailBody({Key? key, required this.castEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [CastDetailAppBar(castEntity: castEntity)];
        },
        body: Container(
          color: AppColors.darkBlue,
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTitleAndWidget(
                    title: CastDetailScreenText.overviewTitle,
                    widget: Text(
                      castEntity.biography ?? 'N/A',
                      style: TextStyles
                          .castDetailScreenStyle[TextStyleKeys.overviewContent],
                    )),
                const SizedBox(
                  height: 10,
                ),
                buildTitleAndWidget(
                    title: CastDetailScreenText.careerTitle,
                    widget: buildList(castEntity.knowFor ?? []))
              ],
            ),
          ),
        ));
  }

  Widget buildList(List<MovieEntity> listMovieEntity) {
    return Column(
      children: [...listMovieEntity.map((e) => buildMovieItem(e))],
    );
  }

  Widget buildMovieItem(MovieEntity movieEntity) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            movieEntity.title ?? "N/A",
            style: TextStyles.castDetailScreenStyle[TextStyleKeys.movieName],
          ),
          Text(
            movieEntity.releaseDate ?? "N/A",
            style: TextStyles.castDetailScreenStyle[TextStyleKeys.movieDate],
          )
        ],
      ),
    );
  }

  Widget buildTitleAndWidget({required String title, required Widget widget}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.appStyle[TextStyleKeys.sectionTitle],
        ),
        const SizedBox(
          height: 10,
        ),
        widget
      ],
    );
  }
}
