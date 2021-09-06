import 'package:flutter/material.dart';
import 'package:projeto_chillox/constants/const.dart';

///
/// This Widget is a $RichText that allows
///  to drawn a text with diffent colors
///

class CustumRichText extends StatelessWidget {
  const CustumRichText({Key? key}) : super(key: key);

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
