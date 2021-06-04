import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

/// SexIconAndText widget used inside CardContainer
class SexIconAndText extends StatelessWidget {
  ///Constructor for SexIconAndText.
  const SexIconAndText({
    required this.icon,
    required this.text,
  });

  ///Text for the SexIconAndText widget
  final String text;

  ///Icon for SexIconAndText widget
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
