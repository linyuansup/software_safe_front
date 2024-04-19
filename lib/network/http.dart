import 'dart:convert';

import 'package:blog_web/network/result.dart';
import 'package:dio/dio.dart';

class Http {
  final _dio = Dio();

  set baseUrl(String url) => _dio.options.baseUrl = url;

  set token(String token) => _dio.options.headers['token'] = token;

  Http() {
    baseUrl = "http://localhost:8080";
  }

  Future<T> post<T>(Vo vo, T Function(Map<String, dynamic> json) fromJson) async {
    var result = (await _dio.post(vo.path, data: jsonEncode(vo))).data
        as Map<String, dynamic>;
    if (result['code'] != 200) {
      return Future.error(HttpException(result["msg"]));
    }
    return Result.fromJson(
        result, (json) => fromJson(json as Map<String, dynamic>)).data;
  }
}

class HttpException implements Exception {
  final String message;

  HttpException(this.message);

  HttpException.fromResponse(Result result) : message = result.msg;

  @override
  String toString() {
    return message;
  }
}

abstract class Vo {
  Map<String, dynamic> toJson();
  String get path;
  factory Vo.fromJson(Map<String, dynamic> json) => throw UnimplementedError();
}

abstract class Dto {
  Map<String, dynamic> toJson();
  factory Dto.fromJson(Map<String, dynamic> json) => throw UnimplementedError();
}
