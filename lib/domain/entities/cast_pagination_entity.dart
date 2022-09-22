import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/domain/entities/list_entity.dart';

class CastPaginationEntity extends ListEntity {
  int? page;
  List<CastEntity>? results;
  int? totalResult;
  int? totalPage;
  CastPaginationEntity({
    this.page,
    this.results,
    this.totalResult,
    this.totalPage,
  });
}
