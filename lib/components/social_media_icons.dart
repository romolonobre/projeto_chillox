import 'package:flutter/material.dart';

class SocialMediaIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/facebook.png',
          height: 34,
        ),
        Image.asset(
          'assets/images/insta.png',
          height: 34,
        ),
      ],
    );
  }
}
