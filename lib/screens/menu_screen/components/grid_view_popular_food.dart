import 'package:flutter/material.dart';
import 'package:projeto_chillox/models/popular_food.dart';
import 'package:projeto_chillox/screens/product_info_screen/product_info_screen.dart';

///
/// This Widget draws our pre-view product detail in a Gridview
///

class GridViewPopularFood extends StatelessWidget {
  const GridViewPopularFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: popularfoodList.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8),
        itemBuilder: (context, index) {
          return _PopularFoodCard(popularfoodList[index]);
        },
      ),
    );
  }
}

class _PopularFoodCard extends StatelessWidget {
  PopularFood popularFood;
  _PopularFoodCard(this.popularFood);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => ProductInfoScreen(popularFood)));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: const Color(0xff2f2f3d),
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),

        ///
        ///  Image value
        ///

        child: Column(
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.orange,
                      blurRadius: 20,
                      spreadRadius: -100,
                      offset: Offset(0, 1)),
                ],
              ),
              child: Image.asset(
                popularFood.imageUrl,
                height: 130,
                width: 130,
                fit: BoxFit.contain,
              ),
            ),

            ///
            /// Burger name value
            ///
            Text(
              popularFood.name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 7),

            ///
            /// Burger description value
            ///

            Text(
              popularFood.subdescription,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 9,
              ),
            ),
            const SizedBox(height: 15),

            ///
            /// This Widget draws a white container with the
            /// burger price and the $add Icon

            Container(
              padding: const EdgeInsets.all(5),
              height: 40,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),

              ///
              /// Row value
              ///

              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    popularFood.price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 25),

                  ///
                  /// Icon value
                  ///
                  const Icon(Icons.add)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
