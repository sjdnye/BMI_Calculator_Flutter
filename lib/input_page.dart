import 'package:bmi_flutter/editable_number_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_flutter/reusable_card.dart';
import 'package:bmi_flutter/icon_content.dart';
import 'constant.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderClass clickedGender = GenderClass.Male;
  int height = 180;
  int weight = 70;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: kBackgroundColor,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: clickedGender == GenderClass.Male
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars, label: "Male"),
                      onPress: () {
                        setState(() {
                          clickedGender = GenderClass.Male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: clickedGender == GenderClass.Female
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: "Female"),
                      onPress: () {
                        setState(() {
                          clickedGender = GenderClass.Female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                onPress: () {},
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(), style: kNumberTextStyle),
                        Text(
                          "cm",
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: kSliderInActiveColor,
                          overlayColor: Color(0x29eb1555),
                          thumbColor: Color(0xffeb1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(
                            () {
                              height = newValue.round().toInt();
                            },
                          );
                        },
                        min: 120.0,
                        max: 220.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      onPress: () {},
                      cardChild: EditableNumber(
                          label: "WEIGHT",
                          number: weight,
                          clickedMinus: () {
                            setState(() {
                              weight--;
                            });
                          },
                          clickedPlus: () {
                            setState(() {
                              weight++;
                            });
                          }),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      onPress: () {},
                      cardChild: EditableNumber(
                          label: "AGE",
                          number: age,
                          clickedMinus: () {
                            setState(() {
                              age--;
                            });
                          },
                          clickedPlus: () {
                            setState(() {
                              age++;
                            });
                          }),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum GenderClass { Male, Female }
