import 'package:flutter/material.dart';
import 'package:projeto_chillox/screens/home_screen/components/popular_list.dart';

import 'categories_food_list.dart';
import 'custum_app_bar.dart';
import 'custum_rich_text.dart';
import 'search_bar_custmed.dart';

///
/// This Widget is the body of the screen
/// where we place all widget we have create
/// for our screen
///

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        const CustumAppBar(),
        const SizedBox(height: 20),
        const CustumRichText(),
        const SizedBox(height: 20),
        const SearchBarCustumed(),
        const SizedBox(height: 24),
        CategoriesFoodList(),
        PopularList()
      ],
    );
  }
}
