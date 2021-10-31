import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projeto_chillox/application/constants/const.dart';
import 'package:projeto_chillox/application/models/category.dart';

///
/// This Widget draws a list of our categories food such as
/// 'Buger' 'Pizza' 'Salad' 'Chicken'
///
///

class CategoriesFoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),

          ///
          /// This Text Widget draws the Categories Header
          ///

          child: Text(
            'Categories',
            style: headingStyle,
          ),
        ),
        const SizedBox(height: 15),

        ///
        /// ListView Value
        ///

        Container(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (context, index) {
              return _CategoryCard(
                categoriesList[index],
              );
            },
          ),
        )
      ],
    );
  }
}

///
/// This is our private CategoryCard widget that we use
/// to render our categories visible in the Listview
///

class _CategoryCard extends StatefulWidget {
  Category category;
  _CategoryCard(this.category);

  @override
  State<_CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<_CategoryCard> {
  @override
  Widget build(BuildContext context) {
    final curentIndex = 0;

    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(left: 14),
            margin: EdgeInsets.only(left: 18),
            height: 60,
            width: 94,
            decoration: BoxDecoration(
                color: conatinerOpacity,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                SvgPicture.asset(
                  widget.category.iconPath,
                  height: 18,
                ),
                const SizedBox(width: 4),
                Text(
                  widget.category.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w900, fontSize: 12),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
