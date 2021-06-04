import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  /// Constructor for BottomButton
  BottomButton({required this.onTap, required this.buttonTitle});

  final Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(
          top: 10,
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: kNumberTextStyle.copyWith(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
