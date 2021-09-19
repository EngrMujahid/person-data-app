import 'package:flutter/material.dart';
import 'package:pernaldata/core/constants/colors.dart';




final boldBlueTextStyle = TextStyle(
  fontFamily: 'poppins',
  fontSize: 40,
  color: blueThemeColor,
  fontWeight: FontWeight.w700,
);

final regularBlackTextStyle = TextStyle(
  fontFamily: 'poppins',
  fontSize: 40,
  color: Colors.black,
);

final loginColorTextStyle = boldBlueTextStyle.copyWith(
  fontSize: 25,
  color: loginTextColor,
);

final boldWhiteTextStyle =
boldBlueTextStyle.copyWith(fontSize: 25, color: Colors.white);

final userNameStyle = TextStyle(
  fontFamily: 'poppins',
  fontSize: 12,
  color: Colors.white,
  fontWeight: FontWeight.w600,
);