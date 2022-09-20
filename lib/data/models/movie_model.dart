import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity implements InterfaceModel {
  MovieModel.fromJson(dynamic json) {
    adult = json["adult"] ?? false;
    backdropPath = json["backdrop_path"] ?? '';
    genreId = List<int>.from(json["genre_ids"].map((x) => x));
    id = json["id"] ?? '';
    originalLanguage = json["original_language"] ?? '';
    originalTitle = json["original_title"] ?? '';
    overview = json["overview"] ?? '';
    posterPath = json["poster_path"] ?? '';
    releaseDate = json["release_date"].toString();
    title = json["title"] ?? '';
    video = json["video"] ?? false;
    voteAverage = json["vote_average"].toDouble() ?? 0;
    voteCount = json["vote_count"] ?? 0;
    popularity = json["popularity"].toDouble() ?? 0;
    firstAirDate = json["first_air_date"] ?? '';
    name = json["name"] ?? '';
    originalName = json["original_name"] ?? '';
  }
  @override
  InterfaceModel fromJson(json) {
    adult = json["adult"] ?? false;
    backdropPath = json["backdrop_path"] ?? '';
    genreId = List<int>.from(json["genre_ids"].map((x) => x));
    id = json["id"] ?? '';
    originalLanguage = json["original_language"] ?? '';
    originalTitle = json["original_title"] ?? '';
    overview = json["overview"] ?? '';
    posterPath = json["poster_path"] ?? '';
    releaseDate = json["release_date"].toString();
    title = json["title"] ?? '';
    video = json["video"] ?? false;
    voteAverage = json["vote_average"].toDouble() ?? 0;
    voteCount = json["vote_count"] ?? 0;
    popularity = json["popularity"].toDouble() ?? 0;
    firstAirDate = json["first_air_date"] ?? '';
    name = json["name"] ?? '';
    originalName = json["original_name"] ?? '';
    return this;
  }

  @override
  Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "genre_ids": List<dynamic>.from(genreId!.map((x) => x)),
        "id": id,
        "original_language": originalLanguage,
        "original_title": originalTitle,
        "overview": overview,
        "poster_path": posterPath,
        "release_date": releaseDate,
        "title": title,
        "video": video,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        "popularity": popularity
      };
}
