import 'package:bmi/constants/constants.dart';
import 'package:bmi/widgets/background_shape_left.dart';
import 'package:bmi/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  double bmiResult = 0.0;
  String bmiResultText = '';
  double widthBad = 10.0;
  double widthGood = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'What is your BMI ?',
          style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: weightController,
                    style: TextStyle(
                        color: blueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Wieght',
                      hintStyle: TextStyle(
                        color: blueColor.withOpacity(0.5),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: heightController,
                    style: TextStyle(
                        color: blueColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Hieght',
                      hintStyle: TextStyle(
                        color: blueColor.withOpacity(0.5),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                final wieghtInput = double.parse(weightController.text);
                final hieghtInput = double.parse(heightController.text);
                setState(() {
                  bmiResult = wieghtInput / (hieghtInput * hieghtInput);
                  if (bmiResult > 25) {
                    bmiResultText = 'You are overweight';
                    widthBad = 200.0;
                    widthGood = 40.0;
                  } else if (bmiResult <= 25 && bmiResult >= 18.5) {
                    bmiResultText = 'Your wieght is normal';
                    widthBad = 40.0;
                    widthGood = 200.0;
                  } else {
                    bmiResultText = 'You are underweight';
                    widthBad = 40.0;
                    widthGood = 40.0;
                  }
                });
              },
              child: Text(
                'Calculate !',
                style: TextStyle(
                    color: blueColorButton,
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              '${bmiResult.toStringAsFixed(2)}',
              style: TextStyle(
                  color: blueColorButton,
                  fontWeight: FontWeight.bold,
                  fontSize: 60),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              '$bmiResultText',
              style: TextStyle(
                  color: blueColorButton.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 65,
            ),
            RightShape(
              width: widthBad,
            ),
            SizedBox(
              height: 50,
            ),
            LeftShape(
              width: widthGood,
            ),
          ],
        ),
      ),
    );
  }
}
