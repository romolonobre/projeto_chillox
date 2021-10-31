import 'package:flutter/material.dart';

class ImageHeaderPopularFood extends StatelessWidget {
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
          'popularFood.imageUrl',
          height: 300,
          width: 250,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
