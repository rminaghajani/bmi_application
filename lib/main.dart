import 'package:bmi/screens/home_screen.dart';
import 'package:bmi/widgets/background_shape_left.dart';
import 'package:bmi/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'comfortaa',
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
