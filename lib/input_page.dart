import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_container.dart';
import 'sex_icon_and_text.dart';

/// Color of the main containers
const Color activeContainerColor = Color(0xFF323244);

/// Font color for unselected text
const Color inactiveFontColor = Color(0xFF8D8E98);

/// Bottom container color
const Color bottomContainerColor = Color(0xFFE83D66);

/// Height of the bottom container
const double bottomContainerHeight = 60;

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
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Row(
              children: const <Expanded>[
                Expanded(
                  child: CardContainer(
                    color: activeContainerColor,
                    child: SexIconAndText(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    color: activeContainerColor,
                    child: SexIconAndText(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 3,
            child: CardContainer(
              color: activeContainerColor,
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: const <Expanded>[
                Expanded(
                  child: CardContainer(
                    color: activeContainerColor,
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    color: activeContainerColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(
              top: 10,
            ),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
