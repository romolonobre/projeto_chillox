import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_chillox/components/buttom.dart';

///
/// This widget draws our buttom cart
///

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
