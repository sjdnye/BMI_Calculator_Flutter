import 'dart:ffi';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:bmi_flutter/component/constant.dart';

class EditableNumber extends StatelessWidget {
  EditableNumber(
      {required this.label,
      required this.number,
      required this.clickedMinus,
      required this.clickedPlus});
  final String label;
  final int number;
  final Function clickedMinus;
  final Function clickedPlus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kLabelTextStyle,
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          number.toString(),
          style: kNumberTextStyle,
        ),
        SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              onPressed: () {
                clickedMinus();
              },
              icon: Icon(FontAwesomeIcons.minus),
            ),
            IconButton(
                onPressed: () {
                  clickedPlus();
                },
                icon: Icon(FontAwesomeIcons.plus))
          ],
        )
      ],
    );
  }
}
