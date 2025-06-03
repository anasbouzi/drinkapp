import 'package:flutter/material.dart';

class ImageForCard extends StatelessWidget {
  const ImageForCard({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -10,
      bottom: 45,
      left: 20,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 70,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade900,
                  blurRadius: 30,
                  spreadRadius: 2,
                ),
              ],
            ),
          ),
          Image.asset(image, fit: BoxFit.contain),
        ],
      ),
    );
  }
}
