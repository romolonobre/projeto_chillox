import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:projeto_chillox/modules/home_screen/home_controller.dart';

import 'widgets/custom_bottom_navigato_bar.dart';
import 'widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigatorBar(),
      body: HomeBody(),
    );
  }
}
