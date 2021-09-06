import 'package:flutter/material.dart';
import 'package:projeto_chillox/models/burger.dart';
import 'package:projeto_chillox/screens/menu_screen/components/body_menu.dart';

class MenuScreen extends StatelessWidget {
  Burger burger;
  MenuScreen(this.burger);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyMenu(burger),
    );
  }
}
