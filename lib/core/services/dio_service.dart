import 'package:ad_camp/env.dart';
import 'package:dio/dio.dart';

class DioService {
  DioService._();

  static final DioService _instance = DioService._();

  factory DioService() => _instance;

  late final Dio dio = Dio(
    BaseOptions(
      baseUrl: Env.apiBaseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),

      headers: {"Content-Type": "application/json", "Accept": "application/json"},
    ),
  );

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    return await dio.get(path, queryParameters: queryParameters);
  }

  Future<Response> post(String path, {dynamic data, Map<String, dynamic>? queryParameters}) async {
    return await dio.post(path, data: data, queryParameters: queryParameters);
  }
}
