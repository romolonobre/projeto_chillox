import 'package:flutter/material.dart';
import 'package:projeto_chillox/constants/const.dart';

/* This Widget draws our bottom bar, we have used
   statefulwidget as the icon Widget changes color when is 
   selected. We used $sizedbox.shrink on the title as
   we dont want to have any TitleElemen
 */

class CustomBottomNavigatorBar extends StatefulWidget {
  @override
  State<CustomBottomNavigatorBar> createState() =>
      _CustomBottomNavigatorBarState();
}

class _CustomBottomNavigatorBarState extends State<CustomBottomNavigatorBar> {
  int currentIndex = 0;
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        // Icon Value
        //

        BottomNavigationBarItem(
          icon: Icon(
            Icons.album_outlined,
            color: orageColor,
          ),
          title: SizedBox.shrink(),
        ),

        // Icon Value
        //
        BottomNavigationBarItem(
          icon: Icon(
            Icons.star_outline_outlined,
            color: Colors.black,
          ),
          title: SizedBox.shrink(),
        ),

        // Icon Value
        //

        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          title: SizedBox.shrink(),
        ),

        // Icon Value
        //

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
