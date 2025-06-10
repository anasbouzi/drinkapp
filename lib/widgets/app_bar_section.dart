import 'package:drinkapp/core/utils/assets_path.dart';
import 'package:drinkapp/core/utils/styless.dart';
import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("menu", style: Styless.textStyle18),
        Spacer(),
        Image.asset(AssetsPath.cart, width: 25),
      ],
    );
  }
}
