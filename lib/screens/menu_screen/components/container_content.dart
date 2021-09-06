import 'package:flutter/material.dart';
import 'package:projeto_chillox/components/delivery_info.dart';
import 'package:projeto_chillox/models/burger.dart';

///
/// This widget draws all the details of teh selected burger from HomeScreen
///

class ConatinerContent extends StatelessWidget {
  Burger burger;

  ConatinerContent(this.burger);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ///
        ///  Burger name value
        ///

        Text(
          burger.name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),

        ///
        /// This Row Widget draws our 3 DeliveryInfo inside
        /// a container. inside the container we used an $IconButtom
        ///  with an icon, annonimous function and a text
        ///

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DeliveryInfo(
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.moped_rounded,
                    )),
                'free'),
            DeliveryInfo(
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.moped_rounded,
                    )),
                burger.duration),
            DeliveryInfo(
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.star_rate_rounded,
                  ),
                ),
                burger.review)
          ],
        )
      ],
    );
  }
}
