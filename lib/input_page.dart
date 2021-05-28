import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_container.dart';
import 'constants.dart';
import 'sex_icon_and_text.dart';

/// Holds the sex types
enum Sex {
  male,
  female,
}

/// The input page for our BMI
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Sex? selectedSex;
  int height = 180;

  int weight = 100;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Row(
              children: <Expanded>[
                Expanded(
                  child: CardContainer(
                    onPress: () {
                      setState(() {
                        selectedSex = Sex.male;
                      });
                    },
                    color: selectedSex == Sex.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: const SexIconAndText(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    onPress: () {
                      setState(() {
                        selectedSex = Sex.female;
                      });
                    },
                    color: selectedSex == Sex.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: const SexIconAndText(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: CardContainer(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    textBaseline: TextBaseline.ideographic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: const Color(0xFFEB1555),
                      overlayColor: const Color(0x29EB1555),
                      inactiveTrackColor: const Color(0xFF8D8E98),
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: <Expanded>[
                Expanded(
                  child: CardContainer(
                    color: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          textBaseline: TextBaseline.ideographic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: <Text>[
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            const Text(
                              'lbs',
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: const Icon(FontAwesomeIcons.minus),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: const Icon(FontAwesomeIcons.plus),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    color: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: const Icon(FontAwesomeIcons.minus),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: const Icon(FontAwesomeIcons.plus),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  /// Constructor for BottomButton
  const BottomButton({required this.onTap, required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/results');
      },
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(
          top: 10,
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            'CALCULATE',
            style: kNumberTextStyle.copyWith(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}

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
