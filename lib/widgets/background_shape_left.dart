import 'package:bmi/constants/constants.dart';
import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  final double width;
  const LeftShape({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
            color: greenBackgroundColor,
          ),
        ),
        SizedBox(width: 5),
        Text(
          'Positive indicator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: greenBackgroundColor,
          ),
        ),
      ],
    );
  }
}
