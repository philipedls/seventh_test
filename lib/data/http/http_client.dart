import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HttpClient {
  final Dio _client;

  HttpClient()
      : _client = Dio(
          BaseOptions(
            baseUrl: dotenv.env['BASE_URL'] ?? '',
          ),
        );

  Dio get client => _client;
}
