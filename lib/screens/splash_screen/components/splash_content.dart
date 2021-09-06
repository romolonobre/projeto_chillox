import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'BEST BURGERS',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.w900, fontSize: 25),
        ),
        Text(
          'IN TOWN',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w900, fontSize: 17),
        ),
      ],
    );
  }
}
