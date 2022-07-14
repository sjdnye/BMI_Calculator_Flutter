import 'package:flutter/material.dart';
import 'package:bmi_flutter/component/constant.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 50.0,
        ),
        Text(label, style: kLabelTextStyle)
      ],
    );
  }
}
