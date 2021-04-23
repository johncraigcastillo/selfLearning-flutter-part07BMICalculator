import 'package:flutter/material.dart';

///Builds the containers on the input_page
class CardContainer extends StatelessWidget {
  ///Constructor for the container
  const CardContainer({
    required this.color,
    this.child,
  });

  ///Color variable for the color of the container
  final Color color;

  ///The child for our BuildContainer widget
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
