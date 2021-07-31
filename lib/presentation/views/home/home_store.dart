import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobx/mobx.dart';
import 'package:seventh_app/data/models/seventh_media_model.dart';
import 'package:seventh_app/data/resources/seventh_resource_impl.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  final SeventhResourceImpl _seventhResourceImpl;

  _HomeStore() : _seventhResourceImpl = SeventhResourceImpl();

  @observable
  bool animtedLoading = false;

  @action
  void changeAnimetedLoading(bool value) => animtedLoading = value;

  @action
  Future<SeventhMediaModel?> fetchSeventhMediaByName(String fileName) async {
    try {
      var secureStorage = FlutterSecureStorage();
      String? acessToken = await secureStorage.read(key: 'access-token');

      return _seventhResourceImpl
          .fetchSeventhMediaByName(fileName, {'x-access-token': acessToken});
    } on DioError catch (error) {
      print(error.message);
    }
  }

  @action
  Future<String?> fetchAcessToken() {
    var secureStorage = FlutterSecureStorage();
    return secureStorage.read(key: 'access-token');
  }
}
