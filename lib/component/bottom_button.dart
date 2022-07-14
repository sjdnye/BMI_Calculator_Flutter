import 'package:flutter/material.dart';
import 'package:bmi_flutter/component/constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.textLabel, required this.onPress});

  final Function onPress;
  final String textLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            textLabel,
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
