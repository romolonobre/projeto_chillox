import 'package:flutter/material.dart';
import 'package:projeto_chillox/components/buttom.dart';

///
/// This Widget draws our customized button and
/// the navigator pop from MenuScreen to HomeScreen
///

class ButtomBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Buttom(
        icon: const Icon(
          Icons.arrow_back,
        ),
        onTap: () {
          Navigator.of(context).pop();
        },
        backgroundColor: Colors.white);
  }
}
