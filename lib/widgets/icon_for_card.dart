import 'package:flutter/material.dart';

class IconForCard extends StatelessWidget {
  const IconForCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 17,
      bottom: 15,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Icon(Icons.arrow_forward_outlined, size: 20),
        ),
      ),
    );
  }
}
