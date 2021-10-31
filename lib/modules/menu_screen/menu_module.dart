import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:projeto_chillox/application/module/module.dart';
import 'package:projeto_chillox/modules/menu_screen/menu_screen.dart';

class MenuModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/menu',
      page: () => MenuScreen(),
    )
  ];
}
