import 'package:flutter/material.dart';

/*
  LOGO COMPONENT 
  This Widget render the CHILLOX logo
  We have used a image widget to drwans it

*/

class ChillexLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(2000),
      child: Image.asset(
        'assets/images/chillox.png',
        height: 105,
      ),
    );
  }
}
