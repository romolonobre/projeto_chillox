import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:projeto_chillox/application/module/module.dart';
import 'package:projeto_chillox/modules/product_info_screen/product_info_screen.dart';

class ProductInfoModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(name: '/productInfo', page: () => ProductInfoScreen())
  ];
}
