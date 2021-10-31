import 'package:flutter/material.dart';
import 'package:projeto_chillox/application/constants/const.dart';

///
/// This Widget is a $RichText that allows
///  to draw a text with diffent colors
///

class CustomRichText extends StatelessWidget {
  const CustomRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'What do you want \n        for',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: ' Dinner',
            style: TextStyle(
              color: orageColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
