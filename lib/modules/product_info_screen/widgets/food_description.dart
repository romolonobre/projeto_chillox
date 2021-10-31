import 'package:flutter/material.dart';
import 'package:projeto_chillox/application/models/popular_food.dart';

import 'package:projeto_chillox/typography/heading.dart';

class DescriptionFood extends StatelessWidget {
  PopularFood popularFood;
  DescriptionFood({required this.popularFood});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Heading(
          'About',
          heading: Headings.h4,
          fontWeight: FontWeight.w800,
        ),
        const SizedBox(height: 10),
        Heading(
          popularFood.fullDescription,
          heading: Headings.h5,
          color: Colors.grey,
        ),
      ],
    );
  }
}
