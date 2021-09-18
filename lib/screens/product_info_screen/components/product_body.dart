import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_chillox/components/buttom.dart';
import 'package:projeto_chillox/components/delivery_info.dart';

import 'package:projeto_chillox/models/popular_food.dart';
import 'package:projeto_chillox/screens/product_info_screen/components/food_description.dart';
import 'package:projeto_chillox/screens/product_info_screen/components/image_header.dart';
import 'package:projeto_chillox/tipography/heading.dart';

import 'app_bar_buttons.dart';
import 'delivery_info_content.dart';
import 'food_details.dart';
import 'food_quantity_counter.dart';

class ProductBody extends StatelessWidget {
  PopularFood popularFood;
  ProductBody(this.popularFood);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              ///
              /// imager header
              ///
              Container(
                height: 350,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff2f2f3d),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ///
                    ///image header
                    ///
                    ImageHeaderPopularFood(popularFood: popularFood),

                    ///
                    ///appbar buttons
                    ///

                    AppBarButtons(),
                    FoodQuantityCounter()
                  ],
                ),
              ),
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///
                    /// This widget Draws the details about the food such as
                    /// NAME - PRICE - SHORT DESCRIPTION
                    ///
                    FoodDetails(popularFood: popularFood),

                    const SizedBox(height: 15),

                    ///
                    /// This Row Widget draws our 3 DeliveryInfo inside
                    /// a container. inside the container we used an $IconButtom
                    ///  with an icon, annonimous function and a text

                    DeliveryInfoContent(popularFood: popularFood),
                    const SizedBox(height: 15),
                    Heading(
                      'Ingredients',
                      heading: Headings.h3,
                      fontWeight: FontWeight.w800,
                    ),
                    const SizedBox(height: 10),
                    const Placeholder(
                      fallbackHeight: 100,
                    ),
                    const SizedBox(height: 15),
                    DescriptionFood(
                      popularFood: popularFood,
                    ),
                    const SizedBox(height: 10),

                    const SizedBox(height: 10),
                    Container(
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
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
