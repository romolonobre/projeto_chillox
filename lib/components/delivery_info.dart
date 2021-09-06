import 'package:flutter/material.dart';
import 'package:projeto_chillox/models/burger.dart';

///
/// This widget drawns the small container with
/// the deliver informations and reveiw icon
///

class DeliveryInfo extends StatelessWidget {
  final IconButton icon;
  final String info;

  DeliveryInfo(this.icon, this.info);

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
          Center(
            child: Text(
              info,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
