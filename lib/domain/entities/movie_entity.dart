import 'package:the_movie_app/domain/entities/entity.dart';

class MovieEntity implements Entity {
  bool? adult;
  String? posterPath;
  String? backdropPath;
  int? id;
  String? overview;
  String? releaseDate;
  String? firstAirDate;
  List<int>? genreId;
  String? originalTitle;
  String? originalName;
  String? originalLanguage;
  String? title;
  String? name;
  int? voteCount;
  double? voteAverage;
  double? popularity;
  bool? video;
  MovieEntity(
      {this.adult,
      this.posterPath,
      this.backdropPath,
      this.id,
      this.overview,
      this.releaseDate,
      this.genreId,
      this.originalTitle,
      this.originalLanguage,
      this.title,
      this.voteCount,
      this.voteAverage,
      this.popularity,
      this.video,
      this.firstAirDate,
      this.name,
      this.originalName});
}
