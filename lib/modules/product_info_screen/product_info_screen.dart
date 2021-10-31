import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_chillox/application/models/popular_food.dart';

import 'widgets/product_body.dart';

class ProductInfoScreen extends StatelessWidget {
  PopularFood popularFood;
  ProductInfoScreen(this.popularFood);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: ProductBody(popularFood),
    );
  }
}