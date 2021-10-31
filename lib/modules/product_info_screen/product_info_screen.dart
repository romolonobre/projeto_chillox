import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/product_body.dart';

class ProductInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: ProductBody(),
    );
  }
}
