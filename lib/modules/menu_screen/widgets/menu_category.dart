import 'package:flutter/material.dart';

///
/// This widget draws the name of all categories on the menu
/// such a 'Burgers' ,'French Fries' ,'Chicken', 'popular'.
/// and we place it in the BodyMenu widget
///

class MenuCategory extends StatelessWidget {
  final String title;

  MenuCategory(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
        child: Text(
          title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
