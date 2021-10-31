import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projeto_chillox/modules/home_screen/home_screen.dart';

import 'components/body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return const HomeScreen();
            })));

    return const Scaffold(
      body: Body(),
    );
  }
}
