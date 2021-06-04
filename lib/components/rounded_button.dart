import 'package:flutter/material.dart';

/// RoundIconButton is a custom button widget with an icon
class RoundIconButton extends StatelessWidget {
  /// Constructs the RoundIconButton with a child
  const RoundIconButton({required this.icon, required this.onPressed});

  /// Function passed into RoundIconButton
  final Function()? onPressed;

  /// Icon widget passed into RoundIconButton
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      constraints: const BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: icon,
    );
  }
}
