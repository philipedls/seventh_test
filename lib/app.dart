import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seventh_app/core/app_theme.dart';
import 'package:seventh_app/presentation/views/home/home_page.dart';

import 'presentation/views/views.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      // DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: defaultTheme(),
      initialRoute: '/splash',
      routes: {
        '/splash': (BuildContext context) => SplashPage(),
        '/auth': (BuildContext context) => AuthenticationPage(),
        '/home': (BuildContext context) => HomePage(),
      },
    );
  }
}
