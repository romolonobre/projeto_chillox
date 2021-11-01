import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:projeto_chillox/application/module/module.dart';
import 'package:projeto_chillox/modules/splash_screen/splash_scrren.dart';

class SpalshModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(name: '/splash', page: () => SplashScreen())
  ];
}
