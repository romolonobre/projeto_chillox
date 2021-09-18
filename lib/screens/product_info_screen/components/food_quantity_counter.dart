import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// This Widget draws a food counter that when you
/// press it could  incrise or descise.
/// We have to buttons - and +
///

class FoodQuantityCounter extends StatelessWidget {
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
