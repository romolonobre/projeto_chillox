import 'package:http/http.dart' as http;
import 'package:projeto_chillox/application/model/burger.dart';

class RemoteService {
  static var client = http.Client();

  static Future<List<Burger>> procurarBugers() async {
    var response = await client.get(Uri.parse(
      'https://my-burger-api.herokuapp.com/burgers?ref=morioh.com&utm_source=morioh.com',
    ));
    if (response == 200) {
      var jasonString = response.body;
      return burgerFromJson(jasonString);
    } else {
      throw Exception('errro');
    }
  }
}
