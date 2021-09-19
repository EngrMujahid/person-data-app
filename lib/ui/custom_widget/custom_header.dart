import 'package:flutter/material.dart';
import 'package:pernaldata/core/constants/textStyle.dart';


class CustomHeader extends StatelessWidget {
  final text;

  CustomHeader(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // logo Section
        Image(
          image: AssetImage('assets/images/personlogo.jpg'),
          height: 45,
          width: 147,
          fit: BoxFit.contain,
        ),
        // screen name text
        Text(
          '$text',
          style: loginColorTextStyle,
        ),
      ],
    );
  }
}
