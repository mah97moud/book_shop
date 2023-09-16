import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String applicationJson = 'application/json';
const String contentType = 'content-type';
const String accept = 'accept';
const String acceptAll = '*/*';
const String authorization = 'Authorization';
const String connection = 'Connection';
const String keepAlive = 'keep-alive';
const String acceptEncoding = 'Accept-Encoding';
const String acceptEncodingType = 'gzip, deflate, br';

class DioFactory {
  static Future<Dio> getDio() async {
    final dio = Dio();

    // final String language = await _appPreferences.getAppLanguage;
    // final String? token = await _appPreferences.getToken;
    // final String? baseUrl = await _appPreferences.getBaseUrl;
    const baseUrl = 'https://www.googleapis.com/books/v1/';

    final Map<String, String> headers = {
      accept: acceptAll,
      connection: keepAlive,
      acceptEncoding: acceptEncodingType,
      contentType: applicationJson,
    };

    dio.options = BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
    );

    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
        ),
      );
    }
    return dio;
  }
}
