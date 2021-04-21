import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///The input page for our BMI
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const <Expanded>[
                Expanded(
                  child: BuildContainer(),
                ),
                Expanded(
                  child: BuildContainer(),
                ),
              ],
            ),
          ),
          const Expanded(
            child: BuildContainer(),
          ),
          Expanded(
            child: Row(
              children: const <Expanded>[
                Expanded(
                  child: BuildContainer(),
                ),
                Expanded(
                  child: BuildContainer(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

///Builds the lighter containers on the input_page
class BuildContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFF323244),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
