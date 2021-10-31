import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_chillox/application/components/delivery_info.dart';
import 'package:projeto_chillox/application/models/popular_food.dart';

///
/// This Row Widget draws our 3 DeliveryInfo inside
/// a container. inside the container we used an $IconButtom
///  with an icon, annonimous function and a text
///

class DeliveryInfoContent extends StatelessWidget {
  const DeliveryInfoContent({
    Key? key,
    required this.popularFood,
  }) : super(key: key);

  final PopularFood popularFood;

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
            popularFood.delivery),
        DeliveryInfo(
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.moped_rounded,
                )),
            popularFood.deliverytime),
        DeliveryInfo(
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star_rate_rounded,
              color: Colors.yellow.shade800,
            ),
          ),
          popularFood.review,
        )
      ],
    );
  }
}
