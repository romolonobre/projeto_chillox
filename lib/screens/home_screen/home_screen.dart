import 'package:flutter/material.dart';

import 'package:projeto_chillox/screens/home_screen/components/home_body.dart';

import 'components/custum_bottom_navigato_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustumBottomNavigatorBar(),
      body: const HomeBody(),
    );
  }
}
