import 'package:flutter/material.dart';
import 'package:projeto_chillox/constants/const.dart';

class CustumBottomNavigatorBar extends StatefulWidget {
  @override
  State<CustumBottomNavigatorBar> createState() =>
      _CustumBottomNavigatorBarState();
}

class _CustumBottomNavigatorBarState extends State<CustumBottomNavigatorBar> {
  int currentIndex = 0;
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.album_outlined,
            color: orageColor,
          ),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.star_outline_outlined,
            color: Colors.black,
          ),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline_outlined,
            color: Colors.black,
          ),
          title: SizedBox.shrink(),
        ),
      ],
      currentIndex: currentIndex,
      onTap: (index) => {
        setState(
          () {
            currentIndex = index;
          },
        )
      },
    );
  }
}
