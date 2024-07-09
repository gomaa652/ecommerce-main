import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

import '../utilities/static_data.dart';

class Api {
  final Dio _dio;
  final baseUrl = 'https://appaicsteel.com/Yalla/apiUser/';

  Api(this._dio);

  Future<Map<String, String>> geted({required String endPoint}) async {
    var response = await _dio.get('$baseUrl$endPoint');
    return response.data;
  }

  static Map<String, String> getHeaders({bool forSunnah = false}) {
    return {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${StaticData.token}",
    };
  }

  static Future<http.Response> get(String url, {bool forSunnah = false}) async {
    debugPrint(url);
    final response = await http.get(
      Uri.parse(url),
      headers: getHeaders(forSunnah: forSunnah),
    );
    return response;
  }

  static Future<http.Response> post(String url,
      {String? body, bool forSunnah = false}) async {
    debugPrint(url);
    final response = await http.post(Uri.parse(url),
        headers: getHeaders(forSunnah: forSunnah), body: body);
    return response;
  }

  static Future<http.Response> put(String url,
      {String? body, bool forSunnah = false}) async {
    debugPrint(url);
    final response = await http.put(Uri.parse(url),
        headers: getHeaders(forSunnah: forSunnah), body: body);
    return response;
  }

  static Future<http.Response> del(String url,
      {String? body, bool forSunnah = false}) async {
    debugPrint(url);
    final response = await http.delete(Uri.parse(url),
        headers: getHeaders(forSunnah: forSunnah), body: body);
    return response;
  }
}

class Urls {}
