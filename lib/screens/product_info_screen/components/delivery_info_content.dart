import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_chillox/components/delivery_info.dart';
import 'package:projeto_chillox/models/popular_food.dart';

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
