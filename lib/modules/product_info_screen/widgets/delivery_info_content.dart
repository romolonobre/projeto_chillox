import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_chillox/application/components/delivery_info.dart';

///
/// This Row Widget draws our 3 DeliveryInfo inside
/// a container. inside the container we used an $IconButtom
///  with an icon, annonimous function and a text
///

class DeliveryInfoContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DeliveryInfo(
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.moped_rounded,
              )),
        ),
        DeliveryInfo(
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.moped_rounded,
              )),
        ),
        DeliveryInfo(
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star_rate_rounded,
              color: Colors.yellow.shade800,
            ),
          ),
        )
      ],
    );
  }
}
