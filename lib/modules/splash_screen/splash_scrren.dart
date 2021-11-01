import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:projeto_chillox/modules/splash_screen/splash_controller.dart';
import 'package:projeto_chillox/modules/splash_screen/widgets/body.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  SplashController splashController = Get.put(SplashController());

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
