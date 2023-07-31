import 'package:bmi/constants/constants.dart';
import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  final double width;
  const RightShape({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Negative indicator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: redBackgroundColor,
          ),
        ),
        SizedBox(width: 5),
        Container(
          width: width,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
            ),
            color: redBackgroundColor,
          ),
        ),
      ],
    );
  }
}
