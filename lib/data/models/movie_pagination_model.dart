import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/data/models/movie_model.dart';
import 'package:the_movie_app/domain/entities/movie_pagination_entity.dart';

class MoviePaginationModel extends MoviePaginationEntity
    implements InterfaceModel {
  MoviePaginationModel._internal();
  static final MoviePaginationModel _singleton =
      MoviePaginationModel._internal();
  factory MoviePaginationModel.getInstance() => _singleton;

  MoviePaginationModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    results = List<MovieModel>.from(
        json["results"].map((x) => MovieModel.fromJson(x)));
    totalResult = json['total_results'];
    totalPage = json['total_pages'];
  }

  @override
  InterfaceModel fromJson(json) {
    page = json['page'];
    results = List<MovieModel>.from(
        json["results"].map((x) => MovieModel.fromJson(x)));
    totalResult = json['total_results'];
    totalPage = json['total_pages'];
    return this;
  }

  @override
  Map<String, dynamic> toJson() => {
        "page": page,
        "results":
            List<dynamic>.from(results!.map((e) => (e as MovieModel).toJson())),
        "total_results": totalResult,
        "total_pages": totalPage
      };
}
