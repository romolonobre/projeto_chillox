import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_chillox/components/buttom.dart';

import 'package:projeto_chillox/models/popular_food.dart';
import 'package:projeto_chillox/screens/product_info_screen/product_info_screen.dart';

class ButtomCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Buttom(
        icon: const Icon(
          Icons.shopping_bag_outlined,
        ),
        onTap: () {},
        backgroundColor: Colors.white);
  }
}
