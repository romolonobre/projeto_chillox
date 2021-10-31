import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_chillox/application/constants/const.dart';

import 'package:projeto_chillox/modules/menu_screen/menu_screen.dart';

///
/// This Widget draws a list of our popular food.
/// At the bottom of this page code we can find a private
/// widget with his own comments
///

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return _PopularFoodCard();
        },
      ),
    );
  }
}

///
/// This is our private PopularFoodCard widget that we use
/// to render our popularfood visible in the Listview
///

class _PopularFoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),

            ///
            /// We used $InkeWell to allow us to click and navigate to the next page
            /// with $navigator.of(context).push
            ///
            child: InkWell(
              onTap: () => Get.toNamed('/menu'),

              ///
              /// Image value
              ///

              child: Image.asset(
                'assets/images/nachos.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),

          ///
          /// We have created this Conatiner to place our
          /// food infomation : "burger name", "burger category"
          /// "burger review icon" "burger delivery duration"
          ///

          Container(
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 4,
                  )
                ]),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Burger name
                    //

                    Text(
                      '',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 5),

                    // Burger category
                    //

                    Text(
                      '',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        //
                        // Burger review icon
                        //

                        const Icon(
                          Icons.star_outlined,
                          size: 15,
                          color: orageColor,
                        ),
                        Text('burger.review',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[500])),
                      ],
                    ),
                    SizedBox(height: 5),

                    // Burger deliver duration
                    //

                    Text(
                      'burger.duration',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500]),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
