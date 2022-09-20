import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:the_movie_app/core/constant.dart';
import 'package:the_movie_app/core/utils/exception_util.dart';

class DioClient {
  final Dio dio;
  DioClient({
    required this.dio,
  });

  Future<Map<String, dynamic>> get(String endpoint) async {
    try {
      log(endpoint);
      final response = await dio.get(ApiConstant.baseApiUrl + endpoint);
      final Map<String, dynamic> data = response.data;
      return data;
    } on DioError catch (e) {
      debugPrint("Status code: ${e.response?.statusCode.toString()}");
      throw ExceptionUtil.specificException(e.response!);
    }
  }

  Future<Map<String, dynamic>> post(String endpoint, dynamic body) async {
    try {
      final response =
          await dio.post(ApiConstant.baseApiUrl + endpoint, data: body);
      log('data: ${response.data}');
      final Map<String, dynamic> data = response.data;
      return data;
    } on DioError catch (e) {
      log("Status code: ${e.response?.statusCode.toString()}");
      throw ExceptionUtil.specificException(e.response!);
    }
  }
}
