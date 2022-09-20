import 'package:flutter/material.dart';
import 'package:the_movie_app/core/constant.dart';
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
                      style: const TextStyle(color: AppColors.secondaryGrey),
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
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            movieEntity.releaseDate ?? "N/A",
            style: const TextStyle(color: AppColors.tertiaryGrey, fontSize: 14),
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
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        widget
      ],
    );
  }
}