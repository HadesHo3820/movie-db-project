import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_movie_app/core/dio_client.dart';
import 'package:the_movie_app/core/network_info.dart';
import 'package:the_movie_app/data/datasources/local_data_source.dart';
import 'package:the_movie_app/data/datasources/remote_data_source.dart';
import 'package:the_movie_app/data/repositories/repository_impl.dart';
import 'package:the_movie_app/domain/repositories/repository_interface.dart';
import 'package:the_movie_app/domain/usecases/app_use_case.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Feature - Authentication

  //! Usecases
  sl.registerLazySingleton(() => AppUseCase(sl()));

  //! Repositories
  sl.registerLazySingleton<RepositoryInterface>(() => RepositoryImpl(
      localDataSource: sl(), remoteDataSource: sl(), networkInfo: sl()));

  //! Data Sources
  sl.registerLazySingleton<RemoteDataSourceInterface>(
      () => RemoteDataSourceImpl(dioClient: sl()));

  sl.registerLazySingleton<LocalDataSourceInterface>(
      () => LocalDataSourceImpl(sharedPreferences: sl()));

  //! Core
  sl.registerLazySingleton<NetworkInfoInterface>(
      () => NetworkInfoImpl(connectionChecker: sl()));

  sl.registerLazySingleton(() => DioClient(dio: sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => DataConnectionChecker());
}
