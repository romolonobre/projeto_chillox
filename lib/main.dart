import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:projeto_chillox/modules/home_screen/home_module.dart';
import 'package:projeto_chillox/modules/home_screen/home_screen.dart';
import 'package:projeto_chillox/modules/menu_screen/menu_module.dart';
import 'package:projeto_chillox/modules/product_info_screen/product_info_module.dart';
import 'package:projeto_chillox/modules/splash_screen/spalsh_module.dart';

import 'modules/splash_screen/splash_scrren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/splash',
      getPages: [
        ...SpalshModule().routers,
        ...HomeModule().routers,
        ...MenuModule().routers,
        ...ProductInfoModule().routers
      ],
    );
  }
}
