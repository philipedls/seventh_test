import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobx/mobx.dart';
import 'package:seventh_app/data/resources/authentication_impl.dart';
import './constants/constants.dart';

part 'authentication_store.g.dart';

class AuthenticationStore = _AuthenticationStore with _$AuthenticationStore;

abstract class _AuthenticationStore with Store {
  final AuthenticationImp _authentication;

  _AuthenticationStore() : _authentication = AuthenticationImp();

  @observable
  double heigthButton = 55.0;

  @observable
  bool loading = false;

  @observable
  TextEditingController usernameController = TextEditingController();

  @observable
  TextEditingController passwordController = TextEditingController();

  @observable
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @action
  void changeLoading(bool value) => loading = value;

  @action
  Future<void> onSignIn(
      String username, String password, BuildContext context) async {
    try {
      changeLoading(true);
      String? response = await _authentication
          .auth({'username': username, 'password': password});
      changeLoading(false);

      if (response.isNotEmpty) {
        await saveAcessToken(response);
        Navigator.of(context).pushReplacementNamed('/home');
      }
    } on DioError catch (error) {
      changeLoading(false);
      treatingHttpExceptionsByCode(error.response?.statusCode, context);
    }
  }

  @action
  void treatingHttpExceptionsByCode(int? statusCode, BuildContext context) {
    switch (statusCode) {
      case 401:
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(USER_OR_PASSWORD_ERROR)));
        break;

      case 400:
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(LOGIN_FAILED)));
        break;
    }
  }

  @action
  Future<void> saveAcessToken(String? token) {
    var storageSecure = FlutterSecureStorage();

    return storageSecure.write(key: 'access-token', value: token);
  }
}
