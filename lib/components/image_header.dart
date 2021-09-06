import 'package:flutter/material.dart';
import 'package:projeto_chillox/models/burger.dart';

class ImageHeader extends StatelessWidget {
  Burger burger;
  ImageHeader(this.burger);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.34;

    return Image.network(
      burger.imageUrl,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
