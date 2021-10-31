import 'package:flutter/material.dart';
import 'package:projeto_chillox/application/models/popular_food.dart';

class ImageHeaderPopularFood extends StatelessWidget {
  const ImageHeaderPopularFood({
    required this.popularFood,
  });

  final PopularFood popularFood;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.orange,
                blurRadius: 200,
                spreadRadius: -80,
                offset: Offset(0, 1)),
          ],
        ),
        child: Image.asset(
          popularFood.imageUrl,
          height: 300,
          width: 250,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
