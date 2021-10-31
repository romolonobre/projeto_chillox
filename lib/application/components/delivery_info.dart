import 'package:flutter/material.dart';

///
/// This widget drawns the small container with
/// the deliver informations and reveiw icon
///

class DeliveryInfo extends StatelessWidget {
  final IconButton icon;

  DeliveryInfo(
    this.icon,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: icon,
            iconSize: 14,
          ),
        ],
      ),
    );
  }
}
