import '../entities/entities.dart';

abstract class ILoadSeventhMediaUseCase {
  Future<SeventhMediaEntity> fetchSeventhMediaByName(
      String url, Map<String, dynamic> header);
}
