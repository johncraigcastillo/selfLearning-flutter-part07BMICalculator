import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

///BMI Calculator App
class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF1D2136),
        scaffoldBackgroundColor: const Color(0xFF1D2136),
      ),
      home: InputPage(),
    );
  }
}
