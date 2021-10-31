import 'package:flutter/material.dart';

///
/// This widget draws the MENU heading and the SEARCH icon
///

class MenuSearchHeader extends StatelessWidget {
  const MenuSearchHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Menu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left),
          Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
