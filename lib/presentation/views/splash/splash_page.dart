import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import './constants/constants.dart';

import 'splash_store.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _store = SplashStore();

  @override
  void initState() {
    _store.navigationDelayedFuture(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(SPLASH_ANIMATION_PATH),
            FutureBuilder<void>(
              future: _store.titleFutureDelayed,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting)
                  return Container();
                return Text(
                  TITLE_PAGE,
                  style: Theme.of(context).textTheme.headline1,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
