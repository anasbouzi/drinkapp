import 'package:flutter/material.dart';

class ToggleWidget extends StatefulWidget {
  const ToggleWidget({super.key});

  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  bool isIced = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey[300],
      ),
      child: Row(
        children: [
          _buildToggleSelection("Hot", !isIced),
          _buildToggleSelection("Iced", isIced),
        ],
      ),
    );
  }

  Widget _buildToggleSelection(label, bool selected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isIced = label == "Iced";
        });
      },
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(horizontal: 20),
        curve: Curves.linear,
        alignment: Alignment.bottomCenter,
        duration: Duration(milliseconds: 400),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: selected ? Colors.white : Colors.grey[300],
        ),
        child: Padding(padding: const EdgeInsets.all(10.0), child: Text(label)),
      ),
    );
  }
}
