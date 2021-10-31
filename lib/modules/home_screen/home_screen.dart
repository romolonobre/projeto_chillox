import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/custom_bottom_navigato_bar.dart';
import 'widgets/home_body.dart';

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
