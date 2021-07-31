import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

class SplashStore = _SplashStore with _$SplashStore;

abstract class _SplashStore with Store {
  @observable
  String title = "Seventh Test";

  @observable
  String animationPath = "assets/jobeet.json";

  @observable
  Future titleFutureDelayed = Future.delayed(Duration(milliseconds: 700));

  @action
  void navigationDelayedFuture(BuildContext context) => Future.delayed(
        Duration(seconds: 6),
        () => Navigator.of(context).pushReplacementNamed('/auth'),
      );
}
