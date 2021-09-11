import 'package:flutter/material.dart';

enum Headings { h1, h2, h3, h4, h5 }

class Heading extends StatelessWidget {
  final String text;
  final Headings heading;
  final Color color;
  final FontWeight fontWeight;

  Heading(
    this.text, {
    this.heading = Headings.h2,
    this.color = Colors.black,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    double size = 20;

    switch (heading) {
      case (Headings.h1):
        size = 30;
        break;
      case (Headings.h2):
        size = 26;
        break;
      case (Headings.h3):
        size = 24;
        break;
      case (Headings.h4):
        size = 18;
        break;
      case (Headings.h5):
        size = 12;
        break;
      default:
        20;
    }

    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
