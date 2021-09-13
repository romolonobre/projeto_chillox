import 'package:flutter/material.dart';
import 'package:projeto_chillox/components/chillex_logo.dart';
import 'package:projeto_chillox/screens/menu_screen/components/image_header.dart';
import 'package:projeto_chillox/models/burger.dart';
import 'package:projeto_chillox/models/popular_food.dart';

import 'buttom_back_page.dart';
import 'buttom_cart.dart';
import 'container_content.dart';

///
/// This widget containe the Stack and all the widgets positioned on it
///

class StackBurgerDetails extends StatelessWidget {
  StackBurgerDetails({
    Key? key,
    required this.burger,
  }) : super(key: key);

  Burger burger;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ///
        /// Imagehearder drwans the Stack backgroundImage
        ///

        ImageHeader(burger),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),

          ///
          /// We use this ROW widget to align our buttons
          ///
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtomBackPage(),
              ButtomCart(),
            ],
          ),
        ),

        ///
        /// This Widget will positione our food details container
        ///

        Positioned(
          bottom: -70,
          left: 18,

          ///
          /// THIS WIDGET WILL DRAWNS THE CONTAINER
          /// WITH THE BURGER INFOMATION DELIVERY
          ///

          child: Container(
              height: 170,
              width: 350,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.orange.withOpacity(0.2),
                        blurRadius: 20,
                        spreadRadius: 3,
                        offset: Offset(0, 7))
                  ]),
              child: ConatinerContent(burger)),
        ),

        ///
        /// THIS WIDGET WILL POSITIONE OUR LOGO
        ///
        Positioned(
          top: 140,
          left: 140,
          child: ChillexLogo(),
        )
      ],
    );
  }
}
