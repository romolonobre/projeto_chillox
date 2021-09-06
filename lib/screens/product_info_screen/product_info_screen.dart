import 'package:flutter/material.dart';

import 'package:projeto_chillox/models/popular_food.dart';

import 'components/product_body.dart';

class ProductInfoScreen extends StatelessWidget {
  PopularFood popularFood;
  ProductInfoScreen(this.popularFood);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductBody(popularFood),
    );
  }
}
