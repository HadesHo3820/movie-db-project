import 'package:dartz/dartz.dart';
import 'package:the_movie_app/core/error/failures.dart';
import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/data/models/list_model.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/domain/entities/entity.dart';
import 'package:the_movie_app/domain/entities/list_entity.dart';

abstract class RepositoryInterface {
  Future<Either<Failure, Entity>> getData(InterfaceModel model, String apiLink,
      {bool isSearch = false});
  Future<Either<Failure, Entity>> postData(
      InterfaceModel model, String apiLink, dynamic body);
  Future<Either<Failure, ListEntity>> getDataList(
      ListModel listModel, String apiLink);
  Future<Either<Failure, Entity>> getCareer(CastEntity castEntity, bool isCast);
  Future<Either<Failure, ListEntity>> getCasts(String apiLink);
  Future<Either<Failure, Map<String, List<String>>>> getImages(String apiLink);
}
