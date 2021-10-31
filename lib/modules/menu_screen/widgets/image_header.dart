import 'package:flutter/material.dart';
import 'package:projeto_chillox/application/models/burger.dart';
import 'package:projeto_chillox/application/models/popular_food.dart';

class ImageHeader extends StatelessWidget {
  Burger burger;
  ImageHeader(this.burger, {PopularFood? popularFood});
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
