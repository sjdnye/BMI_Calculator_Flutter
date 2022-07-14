import 'package:flutter/material.dart';
import 'package:bmi_flutter/component/constant.dart';
import 'package:bmi_flutter/component/reusable_card.dart';
import 'package:bmi_flutter/component/bottom_button.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("BMI CALCULATOR"), backgroundColor: kBackgroundColor),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text("Your Result", style: kTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 8,
            child: ReusableCard(
              onPress: () {},
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Normal",
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI result is .....',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              textLabel: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
