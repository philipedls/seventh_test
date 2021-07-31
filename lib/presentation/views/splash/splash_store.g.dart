// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashStore on _SplashStore, Store {
  final _$titleAtom = Atom(name: '_SplashStore.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$animationPathAtom = Atom(name: '_SplashStore.animationPath');

  @override
  String get animationPath {
    _$animationPathAtom.reportRead();
    return super.animationPath;
  }

  @override
  set animationPath(String value) {
    _$animationPathAtom.reportWrite(value, super.animationPath, () {
      super.animationPath = value;
    });
  }

  final _$titleFutureDelayedAtom =
      Atom(name: '_SplashStore.titleFutureDelayed');

  @override
  Future<dynamic> get titleFutureDelayed {
    _$titleFutureDelayedAtom.reportRead();
    return super.titleFutureDelayed;
  }

  @override
  set titleFutureDelayed(Future<dynamic> value) {
    _$titleFutureDelayedAtom.reportWrite(value, super.titleFutureDelayed, () {
      super.titleFutureDelayed = value;
    });
  }

  final _$_SplashStoreActionController = ActionController(name: '_SplashStore');

  @override
  void navigationDelayedFuture(BuildContext context) {
    final _$actionInfo = _$_SplashStoreActionController.startAction(
        name: '_SplashStore.navigationDelayedFuture');
    try {
      return super.navigationDelayedFuture(context);
    } finally {
      _$_SplashStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
animationPath: ${animationPath},
titleFutureDelayed: ${titleFutureDelayed}
    ''';
  }
}
