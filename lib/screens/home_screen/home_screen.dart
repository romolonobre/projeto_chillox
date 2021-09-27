import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:projeto_chillox/screens/home_screen/components/home_body.dart';

import 'components/custom_bottom_navigato_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigatorBar(),
      body: const HomeBody(),
    );
  }
}
