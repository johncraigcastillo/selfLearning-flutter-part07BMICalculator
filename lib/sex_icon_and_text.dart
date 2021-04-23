import 'package:flutter/material.dart';
import 'input_page.dart';

///Style of the text in SexIconAndText widget
const TextStyle textStyle = TextStyle(
  fontSize: 23,
  color: inactiveFontColor,
);

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
          style: textStyle,
        ),
      ],
    );
  }
}
