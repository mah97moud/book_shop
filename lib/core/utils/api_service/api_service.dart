import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({
    required String endPoint,
  }) async {
    final response = await dio.get(
      endPoint,
    );
    return response.data;
  }
}
