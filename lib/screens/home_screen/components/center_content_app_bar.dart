import 'package:flutter/material.dart';
import 'package:projeto_chillox/constants/const.dart';

///
/// This Widget draws the center content of our AppBar
///

class CenterContentAppBar extends StatelessWidget {
  const CenterContentAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        ///
        ///First Icon value
        ///
        Icon(
          Icons.location_on_outlined,
          color: orageColor,
        ),

        ///
        /// Text value
        ///

        Text(
          'DHAKA, BD',
          style: TextStyle(
              color: Colors.black, fontSize: 13, fontWeight: FontWeight.w700),
        ),

        ///
        /// Second Icon value
        ///
        Icon(
          Icons.keyboard_arrow_down_outlined,
          color: orageColor,
        ),
      ],
    );
  }
}
