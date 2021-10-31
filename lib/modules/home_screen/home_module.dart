import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:projeto_chillox/application/module/module.dart';
import 'package:projeto_chillox/modules/home_screen/home_screen.dart';

class HomeModule implements Module {
  @override
  List<GetPage> routers = [GetPage(name: '/', page: () => const HomeScreen())];
}
