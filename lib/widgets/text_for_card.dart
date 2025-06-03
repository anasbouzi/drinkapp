import 'package:drinkapp/core/utils/styless.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TextForCard extends StatelessWidget {
  const TextForCard({super.key, required this.name, required this.title});

  final String name, title;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 150,
      top: 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: Styless.textStyle16),
          Gap(5),
          Text(
            title,
            style: Styless.textStyle14.copyWith(color: Colors.grey.shade400),
          ),
        ],
      ),
    );
  }
}
