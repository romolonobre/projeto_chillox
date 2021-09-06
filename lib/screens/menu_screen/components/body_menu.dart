import 'package:flutter/material.dart';
import 'package:projeto_chillox/models/burger.dart';
import 'package:projeto_chillox/models/popular_food.dart';

import 'package:projeto_chillox/screens/menu_screen/components/stack_berger_details.dart';

import 'grid_view_popular_food.dart';
import 'menu_category.dart';
import 'menu_search_heading.dart';

class BodyMenu extends StatelessWidget {
  Burger burger;
  BodyMenu(this.burger);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StackBurgerDetails(burger: burger),
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
        Expanded(
          child: GridView.builder(
            itemCount: popularfoodList.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8),
            itemBuilder: (context, index) {
              return GridViewPopularFood(
                popularfoodList[index],
              );
            },
          ),
        )
      ],
    );
  }
}
