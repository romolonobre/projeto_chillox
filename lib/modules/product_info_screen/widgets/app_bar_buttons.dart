import 'package:flutter/material.dart';
import 'package:projeto_chillox/application/components/buttom.dart';

class AppBarButtons extends StatelessWidget {
  const AppBarButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Buttom(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onTap: () {},
            backgroundColor: Colors.white,
          ),
          Buttom(
            icon: const Icon(
              Icons.favorite_border_outlined,
            ),
            onTap: () {},
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
