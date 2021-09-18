import 'package:flutter/material.dart';
import 'package:projeto_chillox/models/popular_food.dart';

///
/// Add To Cart Butom
///

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    Key? key,
    required this.popularFood,
  }) : super(key: key);

  final PopularFood popularFood;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffff663a),
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Center(
        child: Text(
          'Add to cart ${popularFood.price}',
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
