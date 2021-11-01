import 'package:flutter/material.dart';
import 'package:projeto_chillox/application/constants/const.dart';

///
/// This Widget draws our search bar
///

class SearchBarCustumed extends StatelessWidget {
  const SearchBarCustumed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: conatinerOpacity,
        borderRadius: BorderRadius.circular(20),
      ),

      ///
      /// TextField value
      ///
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            size: 26,
            color: Colors.grey[500],
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 19),
          hintText: 'Search your food',
          hintStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
          suffixIcon: const Icon(
            Icons.tune,
            color: orageColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
