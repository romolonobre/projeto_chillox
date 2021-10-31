import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_chillox/application/models/burger.dart';

import 'widgets/body_menu.dart';

class MenuScreen extends StatelessWidget {
  Burger burger;
  MenuScreen(this.burger);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: BodyMenu(burger),
    );
  }
}
