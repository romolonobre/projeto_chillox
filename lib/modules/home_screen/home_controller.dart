import 'package:get/get.dart';
import 'package:projeto_chillox/application/model/burger.dart';
import 'package:projeto_chillox/application/service/remote_service.dart';

class HomeController extends GetxController {
  var burgerList = <Burger>[].obs;

  @override
  void onInit() {
    buscarBurger();
    super.onInit();
  }

  void buscarBurger() async {
    var burgers = await RemoteService.procurarBugers();
    if (burgers != null) {
      burgerList.value = burgers;
    }
  }
}
