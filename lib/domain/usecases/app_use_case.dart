import 'package:the_movie_app/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:the_movie_app/core/usecases/usecase.dart';
import 'package:the_movie_app/domain/repositories/repository_interface.dart';

class AppUseCase extends Usecase {
  final RepositoryInterface repositoryInterface;
  AppUseCase(this.repositoryInterface);

  @override
  Future<Either<Failure, dynamic>> callData(type, params,
      {bool isSearch = false}) async {
    return await repositoryInterface.getData(type, params, isSearch: isSearch);
  }

  @override
  Future<Either<Failure, dynamic>> postData(type, params, body) async {
    return await repositoryInterface.postData(type, params, body);
  }

  @override
  Future<Either<Failure, dynamic>> callDataList(typeList, params) async {
    return await repositoryInterface.getDataList(typeList, params);
  }

  @override
  Future<Either<Failure, dynamic>> callCareer(params, isCast) async {
    return await repositoryInterface.getCareer(params, isCast);
  }

  @override
  Future<Either<Failure, dynamic>> callImage(params) async {
    return await repositoryInterface.getImages(params);
  }

  @override
  Future<Either<Failure, dynamic>> callCast(params) async {
    return await repositoryInterface.getCasts(params);
  }
}
