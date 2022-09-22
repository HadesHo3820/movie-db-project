import 'package:the_movie_app/domain/entities/list_entity.dart';
import 'package:the_movie_app/domain/entities/movie_entity.dart';

class MoviePaginationEntity extends ListEntity {
  int? page;
  List<MovieEntity>? results;
  int? totalResult;
  int? totalPage;
  MoviePaginationEntity({
    this.page,
    this.results,
    this.totalResult,
    this.totalPage,
  });
}
