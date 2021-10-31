import 'package:flutter/material.dart';
import 'package:projeto_chillox/application/models/popular_food.dart';

import 'package:projeto_chillox/typography/heading.dart';

/// This widget Draws the details about the food
/// such as NAME - PRICE - SHORT DESCRIPTION
///

class FoodDetails extends StatelessWidget {
  const FoodDetails({
    Key? key,
    required this.popularFood,
  }) : super(key: key);

  final PopularFood popularFood;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Heading(
              popularFood.name,
              fontWeight: FontWeight.w800,
            ),
            Text(
              popularFood.price,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Heading(
          popularFood.subdescription,
          heading: Headings.h5,
          color: Colors.grey,
        ),
      ],
    );
  }
}
