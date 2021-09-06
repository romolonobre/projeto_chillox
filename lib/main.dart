import 'package:flutter/material.dart';
import 'package:projeto_chillox/models/burger.dart';
import 'package:projeto_chillox/models/popular_food.dart';
import 'package:projeto_chillox/screens/menu_screen/menu_screen.dart';
import 'package:projeto_chillox/screens/product_info_screen/product_info_screen.dart';
import 'package:projeto_chillox/screens/splash_screen/splash_scrren.dart';

import 'screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
