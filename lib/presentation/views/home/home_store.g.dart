// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$animtedLoadingAtom = Atom(name: '_HomeStore.animtedLoading');

  @override
  bool get animtedLoading {
    _$animtedLoadingAtom.reportRead();
    return super.animtedLoading;
  }

  @override
  set animtedLoading(bool value) {
    _$animtedLoadingAtom.reportWrite(value, super.animtedLoading, () {
      super.animtedLoading = value;
    });
  }

  final _$fetchSeventhMediaByNameAsyncAction =
      AsyncAction('_HomeStore.fetchSeventhMediaByName');

  @override
  Future<SeventhMediaModel?> fetchSeventhMediaByName(String fileName) {
    return _$fetchSeventhMediaByNameAsyncAction
        .run(() => super.fetchSeventhMediaByName(fileName));
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  void changeAnimetedLoading(bool value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.changeAnimetedLoading');
    try {
      return super.changeAnimetedLoading(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<String?> fetchAcessToken() {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.fetchAcessToken');
    try {
      return super.fetchAcessToken();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
animtedLoading: ${animtedLoading}
    ''';
  }
}
