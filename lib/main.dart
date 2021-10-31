import 'package:flutter/material.dart';

import 'modules/splash_screen/splash_scrren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: SplashScreen()
        // routes: {
        // '/': (_) => SplashScreen(),
        // 'HomeScreen': (_) => HomeScreen(),
        //  'MenuScreen': (_) => MenuScreen(),
        );
  }
}
