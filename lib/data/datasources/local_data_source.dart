import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:the_movie_app/core/error/exception.dart';
import 'package:the_movie_app/data/models/cast_model.dart';
import 'package:the_movie_app/data/models/credit_model.dart';
import 'package:the_movie_app/data/models/interface_model.dart';
import 'package:the_movie_app/data/models/list_model.dart';

abstract class LocalDataSourceInterface {
  Future<void> cacheDataModel(InterfaceModel cacheModel, String key);
  Future<InterfaceModel> getDataModel(InterfaceModel model, String key);
  Future<ListModel> getListModel(ListModel listModel, String key);
  Future<CastModel> getCareer(CastModel castModel);
  Future<CreditModel> getCasts(String apiLink);
}

class LocalDataSourceImpl extends LocalDataSourceInterface {
  final SharedPreferences sharedPreferences;
  LocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheDataModel(InterfaceModel cacheModel, String key) async {
    final jsonString = jsonEncode(cacheModel.toJson());
    final isSuccess = await sharedPreferences.setString(key, jsonString);
    if (!isSuccess) {
      throw CachedException();
    }
  }

  @override
  Future<InterfaceModel> getDataModel(InterfaceModel model, String key) {
    final jsonString = sharedPreferences.getString(key);
    if (jsonString != null) {
      return Future.value(model.fromJson(jsonDecode(jsonString)));
    }
    throw GetCachedException();
  }

  @override
  Future<ListModel> getListModel(ListModel listModel, String key) {
    final jsonString = sharedPreferences.getString(key);
    if (jsonString != null) {
      return Future.value(listModel.fromJson(jsonDecode(jsonString)));
    }
    throw GetCachedException();
  }

  @override
  Future<CastModel> getCareer(CastModel castModel) {
    final jsonCasts = sharedPreferences.getString(castModel.id.toString());
    if (jsonCasts != null) {
      return Future.value(CastModel.fromJson(jsonDecode(jsonCasts)));
    }
    throw GetCachedException();
  }

  @override
  Future<CreditModel> getCasts(String apiLink) {
    final jsonCasts = sharedPreferences.getString(apiLink);
    if (jsonCasts != null) {
      return Future.value(CreditModel.fromJson(jsonDecode(jsonCasts)));
    }
    throw GetCachedException();
  }
}
