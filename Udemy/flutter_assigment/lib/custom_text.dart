import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String textString;

  CustomText(this.textString);

  @override
  Widget build(BuildContext context) {
    return Text(textString);
  }
}
