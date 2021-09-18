import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_chillox/components/buttom.dart';
import 'package:projeto_chillox/components/delivery_info.dart';

import 'package:projeto_chillox/models/popular_food.dart';
import 'package:projeto_chillox/screens/product_info_screen/components/image_header.dart';
import 'package:projeto_chillox/tipography/heading.dart';

import 'app_bar_buttons.dart';
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
                    const SizedBox(height: 5),
                    Heading(
                      popularFood.subdescription,
                      heading: Headings.h5,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DeliveryInfo(
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.moped_rounded,
                                )),
                            popularFood.delivery),
                        DeliveryInfo(
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.moped_rounded,
                                )),
                            popularFood.deliverytime),
                        DeliveryInfo(
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star_rate_rounded,
                              color: Colors.yellow.shade800,
                            ),
                          ),
                          popularFood.review,
                        )
                      ],
                    ),
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
