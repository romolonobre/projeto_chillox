import 'package:flutter/material.dart';
import 'package:projeto_chillox/application/components/delivery_info.dart';

///
/// This widget draws all selected burger information from HomeScreen
///

class ConatinerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ///
        ///  Burger name value
        ///

        Text(
          'burger.name',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),

        ///
        /// This Row draws our 3 DeliveryInfo widget inside
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
                icon: const Icon(
                  Icons.star_rate_rounded,
                  color: Colors.amber,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
