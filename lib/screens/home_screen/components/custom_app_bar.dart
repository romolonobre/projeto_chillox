import 'package:flutter/material.dart';
import 'package:projeto_chillox/components/buttom.dart';
import 'package:projeto_chillox/constants/const.dart';

import 'center_content_app_bar.dart';

///
/// This Widget draws ou Custimized AppBar
/// inside this widget we have the $Buttom widget that is
/// a custumized buttom and also we have the $CenterContentAppBar Widget
/// with this combination we have our custumized appbar
///

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///
          /// Buttom value
          ///
          Buttom(
            icon: const Icon(Icons.filter_list),
            backgroundColor: conatinerOpacity,
            onTap: () {},
          ),

          ///
          ///$CenterContentAppBar value
          ///

          const CenterContentAppBar(),

          ///
          /// Buttom value
          ///

          Buttom(
            icon: const Icon(Icons.notifications_none_outlined),
            backgroundColor: conatinerOpacity,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
