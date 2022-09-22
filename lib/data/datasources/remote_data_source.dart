import 'dart:developer';

import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/dio_client.dart';
import 'package:the_movie_app/data/models/cast_model.dart';
import 'package:the_movie_app/data/models/credit_model.dart';
import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/data/models/list_model.dart';
import 'package:the_movie_app/data/models/session_model.dart';

abstract class RemoteDataSourceInterface {
  Future<InterfaceModel> getData(
      InterfaceModel model, String apiLink, bool isSearch);
  Future<InterfaceModel> postData(
      InterfaceModel model, String apiLink, dynamic body);
  Future<ListModel> getDataList(ListModel listModel, String apiLink);
  Future<CastModel> getCareer(CastModel castModel, bool isCast);
  Future<CreditModel> getCasts(String apiLink);
  Future<Map<String, List<String>>> getImages(String apiLink);
}

class RemoteDataSourceImpl implements RemoteDataSourceInterface {
  final DioClient dioClient;

  RemoteDataSourceImpl({required this.dioClient});

  @override
  Future<InterfaceModel> getData(
      InterfaceModel model, String apiLink, bool isSearch) async {
    final sessionId = SessionModel.getInstance().sessionId;
    log("sessionId: $sessionId");

    final response = await dioClient.get(isSearch
        ? ApiConstant.getSearchUrl(apiLink, sessionId)
        : ApiConstant.getDataUrl(apiLink, sessionId));
    return model.fromJson(response);
  }

  @override
  Future<InterfaceModel> postData(
      InterfaceModel model, String apiLink, body) async {
    final resposne =
        await dioClient.post(ApiConstant.postDataUrl(apiLink), body);
    return model.fromJson(resposne);
  }

  @override
  Future<ListModel> getDataList(ListModel listModel, String apiLink) async {
    final sessionId = SessionModel.getInstance().sessionId;
    final Map<String, dynamic> jsonResponse =
        await dioClient.get(ApiConstant.getDataUrl(apiLink, sessionId));
    return listModel.fromJson(jsonResponse);
  }

  @override
  Future<CastModel> getCareer(CastModel castModel, bool isCast) async {
    final sessionId = SessionModel.getInstance().sessionId;
    final result = await Future.wait([
      dioClient.get(ApiConstant.getDataUrl(
          '/person/${castModel.id}/movie_credits', sessionId)),
      dioClient
          .get(ApiConstant.getDataUrl('/person/${castModel.id}', sessionId))
    ]);
    final Map<String, dynamic> jsonResponseCareer = result[0];
    castModel.addCareer(jsonResponseCareer, isCast);
    final Map<String, dynamic> jsonResponseDetail = result[1];
    castModel.addPersonDetailInfo(jsonResponseDetail);
    return castModel;
  }

  @override
  Future<CreditModel> getCasts(String apiLink) async {
    final sessionId = SessionModel.getInstance().sessionId;
    final Map<String, dynamic> jsonResponse =
        await dioClient.get(ApiConstant.getDataUrl(apiLink, sessionId));
    return CreditModel.fromJson(jsonResponse);
  }

  @override
  Future<Map<String, List<String>>> getImages(String apiLink) async {
    Map<String, List<String>> result = {};
    final sessionId = SessionModel.getInstance().sessionId;
    final Map<String, dynamic> jsonResponse =
        await dioClient.get(ApiConstant.getDataUrl(apiLink, sessionId));
    List<String> listBackdrops = [];
    List<String> listPosters = [];
    for (var object in jsonResponse['backdrops']) {
      listBackdrops.add(object['file_path']);
    }
    for (var object in jsonResponse['posters']) {
      listPosters.add(object['file_path']);
    }
    result['backdrops'] = listBackdrops;
    result['posters'] = listPosters;
    return result;
  }
}
