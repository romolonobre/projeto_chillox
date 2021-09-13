import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:projeto_chillox/components/buttom.dart';
import 'package:projeto_chillox/components/delivery_info.dart';

import 'package:projeto_chillox/models/popular_food.dart';
import 'package:projeto_chillox/screens/product_info_screen/components/image_header.dart';
import 'package:projeto_chillox/tipography/heading.dart';

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

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Buttom(
                            icon: const Icon(
                              Icons.arrow_back,
                            ),
                            onTap: () {},
                            backgroundColor: Colors.white,
                          ),
                          Buttom(
                            icon: const Icon(
                              Icons.favorite_border_outlined,
                            ),
                            onTap: () {},
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    FoodQuantityButtons()
                  ],
                ),
              ),
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
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

class FoodQuantityButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: -30,
        left: 110,
        child: Container(
            height: 70,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepOrange.withOpacity(
                    0.2,
                  ),
                  spreadRadius: 0,
                  blurRadius: 18,
                  offset: Offset(0, 10),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.remove,
                  size: 30,
                ),
                Text(
                  '2',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.orange,
                ),
              ],
            )));
  }
}
