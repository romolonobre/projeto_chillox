import 'package:flutter/material.dart';

import 'grid_view_popular_food.dart';
import 'menu_category.dart';
import 'menu_search_heading.dart';
import 'stack_berger_details.dart';

/* 
  This widget is the body of our screen, we use it to
  place our customed widgets to make it nice and fit 
  on the screen
*/

class BodyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StackBurgerDetails(),
        const SizedBox(height: 100),
        const MenuSearchHeader(),
        const SizedBox(height: 15),
        Container(
          height: 48,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MenuCategory('Popular'),
              MenuCategory('Burgers'),
              MenuCategory('French Fries'),
              MenuCategory('Chicken'),
              MenuCategory('Popular'),
            ],
          ),
        ),
        GridViewPopularFood()
      ],
    );
  }
}
