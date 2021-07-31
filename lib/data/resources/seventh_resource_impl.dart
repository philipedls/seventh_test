import 'package:dio/dio.dart';
import 'package:seventh_app/domain/useCases/useCases.dart';

import '../http/http.dart';
import '../models/models.dart';

class SeventhResourceImpl implements ILoadSeventhMediaUseCase {
  final HttpClient _client;

  SeventhResourceImpl() : _client = HttpClient();

  @override
  Future<SeventhMediaModel> fetchSeventhMediaByName(
      String paramUrl, Map<String, dynamic> header) async {
    var mediaUrlResponse = await _client.client
        .get('/video/$paramUrl', options: Options(headers: header));

    return SeventhMediaModel.fromJson(mediaUrlResponse.data);
  }
}
