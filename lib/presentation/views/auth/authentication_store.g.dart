// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthenticationStore on _AuthenticationStore, Store {
  final _$heigthButtonAtom = Atom(name: '_AuthenticationStore.heigthButton');

  @override
  double get heigthButton {
    _$heigthButtonAtom.reportRead();
    return super.heigthButton;
  }

  @override
  set heigthButton(double value) {
    _$heigthButtonAtom.reportWrite(value, super.heigthButton, () {
      super.heigthButton = value;
    });
  }

  final _$loadingAtom = Atom(name: '_AuthenticationStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$usernameControllerAtom =
      Atom(name: '_AuthenticationStore.usernameController');

  @override
  TextEditingController get usernameController {
    _$usernameControllerAtom.reportRead();
    return super.usernameController;
  }

  @override
  set usernameController(TextEditingController value) {
    _$usernameControllerAtom.reportWrite(value, super.usernameController, () {
      super.usernameController = value;
    });
  }

  final _$passwordControllerAtom =
      Atom(name: '_AuthenticationStore.passwordController');

  @override
  TextEditingController get passwordController {
    _$passwordControllerAtom.reportRead();
    return super.passwordController;
  }

  @override
  set passwordController(TextEditingController value) {
    _$passwordControllerAtom.reportWrite(value, super.passwordController, () {
      super.passwordController = value;
    });
  }

  final _$formKeyAtom = Atom(name: '_AuthenticationStore.formKey');

  @override
  GlobalKey<FormState> get formKey {
    _$formKeyAtom.reportRead();
    return super.formKey;
  }

  @override
  set formKey(GlobalKey<FormState> value) {
    _$formKeyAtom.reportWrite(value, super.formKey, () {
      super.formKey = value;
    });
  }

  final _$onSignInAsyncAction = AsyncAction('_AuthenticationStore.onSignIn');

  @override
  Future<void> onSignIn(
      String username, String password, BuildContext context) {
    return _$onSignInAsyncAction
        .run(() => super.onSignIn(username, password, context));
  }

  final _$_AuthenticationStoreActionController =
      ActionController(name: '_AuthenticationStore');

  @override
  void changeLoading(bool value) {
    final _$actionInfo = _$_AuthenticationStoreActionController.startAction(
        name: '_AuthenticationStore.changeLoading');
    try {
      return super.changeLoading(value);
    } finally {
      _$_AuthenticationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void treatingHttpExceptionsByCode(int? statusCode, BuildContext context) {
    final _$actionInfo = _$_AuthenticationStoreActionController.startAction(
        name: '_AuthenticationStore.treatingHttpExceptionsByCode');
    try {
      return super.treatingHttpExceptionsByCode(statusCode, context);
    } finally {
      _$_AuthenticationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<void> saveAcessToken(String? token) {
    final _$actionInfo = _$_AuthenticationStoreActionController.startAction(
        name: '_AuthenticationStore.saveAcessToken');
    try {
      return super.saveAcessToken(token);
    } finally {
      _$_AuthenticationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
heigthButton: ${heigthButton},
loading: ${loading},
usernameController: ${usernameController},
passwordController: ${passwordController},
formKey: ${formKey}
    ''';
  }
}
