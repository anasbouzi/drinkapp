import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QtyWidget extends StatefulWidget {
  const QtyWidget({super.key});

  @override
  State<QtyWidget> createState() => _QtyWidgetState();
}

int num = 1;

class _QtyWidgetState extends State<QtyWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Colors.white,
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (num > 1) {
                    num--;
                  }
                });
              },
              child: Text(
                "-",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Gap(20),
            Text(
              num.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Gap(20),
            GestureDetector(
              onTap: () {
                setState(() {
                  num++;
                });
              },
              child: Text(
                "+",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
