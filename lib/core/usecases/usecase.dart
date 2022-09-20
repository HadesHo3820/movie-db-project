import 'package:dartz/dartz.dart';
import 'package:the_movie_app/core/error/failures.dart';

abstract class Usecase {
  Future<Either<Failure, dynamic>> callData(dynamic type, dynamic params,
      {bool isSearch = false});
  Future<Either<Failure, dynamic>> postData(
      dynamic type, dynamic params, dynamic body);

  Future<Either<Failure, dynamic>> callDataList(typeList, params);

  Future<Either<Failure, dynamic>> callImage(params);

  Future<Either<Failure, dynamic>> callCast(dynamic params);

  Future<Either<Failure, dynamic>> callCareer(dynamic params, bool isCast);
}
