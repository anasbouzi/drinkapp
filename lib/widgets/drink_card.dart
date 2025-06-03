import 'package:drinkapp/widgets/icon_for_card.dart';
import 'package:drinkapp/widgets/text_for_card.dart';
import 'package:flutter/material.dart';

import 'image_for_card.dart';

class DrinkCard extends StatelessWidget {
  const DrinkCard({
    super.key,
    required this.image,
    required this.name,
    required this.title,
    required this.price,
  });

  final String image, name, title, price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Card(
            elevation: 2,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
              child: Row(),
            ),
          ),
        ),
        ImageForCard(image: image),
        TextForCard(title: title, name: name),
        IconForCard(),
      ],
    );
  }
}
