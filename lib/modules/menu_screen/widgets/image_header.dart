import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.34;

    return Image.network(
      'burger.imageUrl',
      height: height,
      fit: BoxFit.cover,
    );
  }
}
