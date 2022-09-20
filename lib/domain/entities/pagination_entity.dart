import 'package:the_movie_app/domain/entities/entity.dart';

class PaginationEntity<T> extends Entity {
  int? page;
  List<T>? results;
  int? totalResult;
  int? totalPage;
  PaginationEntity({
    this.page,
    this.results,
    this.totalResult,
    this.totalPage,
  });
}
