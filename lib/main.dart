import 'package:bmi_calculator/results.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results.dart';

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
      initialRoute: '/inputPage',
      routes: <String, WidgetBuilder>{
        '/inputPage': (context) => InputPage(),
        '/results': (context) => ResultsPage(),
      },
    );
  }
}
