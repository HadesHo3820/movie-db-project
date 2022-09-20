import 'package:the_movie_app/core/error/exception.dart';
import 'package:the_movie_app/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:the_movie_app/core/network_info.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';
import 'package:the_movie_app/data/datasources/local_data_source.dart';
import 'package:the_movie_app/data/datasources/remote_data_source.dart';
import 'package:the_movie_app/data/models/cast_model.dart';
import 'package:the_movie_app/data/models/list_model.dart';
import 'package:the_movie_app/domain/entities/cast_entity.dart';
import 'package:the_movie_app/domain/entities/entity.dart';
import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/domain/entities/list_entity.dart';
import 'package:the_movie_app/domain/repositories/repository_interface.dart';

class RepositoryImpl implements RepositoryInterface {
  final LocalDataSourceInterface localDataSource;
  final RemoteDataSourceInterface remoteDataSource;
  final NetworkInfoInterface networkInfo;

  RepositoryImpl(
      {required this.localDataSource,
      required this.remoteDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, Entity>> getData(InterfaceModel model, String apiLink,
      {bool isSearch = false}) async {
    try {
      if (await networkInfo.isConnected) {
        final remoteDataModel =
            await remoteDataSource.getData(model, apiLink, isSearch);
        localDataSource.cacheDataModel(remoteDataModel, apiLink);
        return Right(remoteDataModel);
      }
      return Right(await localDataSource.getDataModel(model, apiLink));
    } on CustomException catch (e) {
      return Left(ExceptionUtil.throwSpecificFailure(e));
    }
  }

  @override
  Future<Either<Failure, Entity>> postData(
      InterfaceModel model, String apiLink, body) async {
    try {
      final modelData = await remoteDataSource.postData(model, apiLink, body);
      return Right(modelData);
    } on CustomException catch (e) {
      return Left(ExceptionUtil.throwSpecificFailure(e));
    }
  }

  @override
  Future<Either<Failure, ListEntity>> getDataList(
      ListModel listModel, String apiLink) async {
    try {
      if (await networkInfo.isConnected) {
        final remoteData =
            await remoteDataSource.getDataList(listModel, apiLink);
        return Right(remoteData);
      }
      return Right(await localDataSource.getListModel(listModel, apiLink));
    } on CustomException catch (e) {
      return Left(ExceptionUtil.throwSpecificFailure(e));
    }
  }

  @override
  Future<Either<Failure, Entity>> getCareer(
      CastEntity castEntity, bool isCast) async {
    try {
      if (await networkInfo.isConnected) {
        final remoteCasts =
            await remoteDataSource.getCareer(castEntity as CastModel, isCast);
        localDataSource.cacheDataModel(remoteCasts, castEntity.creditId!);
        return Right(remoteCasts);
      }
      return Right(await localDataSource.getCareer(castEntity as CastModel));
    } on CustomException catch (e) {
      return Left(ExceptionUtil.throwSpecificFailure(e));
    }
  }

  @override
  Future<Either<Failure, ListEntity>> getCasts(String apiLink) async {
    try {
      if (await networkInfo.isConnected) {
        final remoteCasts = await remoteDataSource.getCasts(apiLink);
        localDataSource.cacheDataModel(remoteCasts, apiLink);
        return Right(remoteCasts);
      }
      return Right(await localDataSource.getCasts(apiLink));
    } on CustomException catch (e) {
      return Left(ExceptionUtil.throwSpecificFailure(e));
    }
  }

  @override
  Future<Either<Failure, Map<String, List<String>>>> getImages(
      String apiLink) async {
    try {
      final remoteImages = await remoteDataSource.getImages(apiLink);
      return Right(remoteImages);
    } on CustomException catch (e) {
      return Left(ExceptionUtil.throwSpecificFailure(e));
    }
  }
}
