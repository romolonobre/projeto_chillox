import 'package:flutter/material.dart';

/*
  BUTTOM COMPONENT 
  This Widget drawas a buttom
  The buttom may have differnet styles
  We can set a backgroudColor and a icon
  We receives a $ontap paramneter with a function to executed
  when the buttom is pressed 



*/

class Buttom extends StatelessWidget {
  final Icon icon;
  VoidCallback onTap;
  Color backgroundColor;

  Buttom(
      {required this.icon, required this.onTap, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: icon,
        iconSize: 20,
      ),
    );
  }
}
