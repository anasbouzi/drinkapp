import 'package:flutter/material.dart';

class BottomSection extends StatefulWidget {
  const BottomSection({super.key});

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  int? currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(4, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },

          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: currentIndex == index ? Colors.orangeAccent : Colors.white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.black87),
            ),
            child: Icon(
              Icons.local_drink_rounded,
              color: currentIndex == index ? Colors.white : Colors.black54,
            ),
          ),
        );
      }),
    );
  }
}
