import 'package:flutter/material.dart';

class ShadowForDetailesScreen extends StatelessWidget {
  const ShadowForDetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 210, // Adjusted position
      left: 0,
      right: 0,
      child: Container(
        width: 70,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(color: Colors.black54, blurRadius: 80, spreadRadius: 20),
          ],
        ),
      ),
    );
  }
}
