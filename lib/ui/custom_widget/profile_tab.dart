import 'package:flutter/material.dart';
import 'package:pernaldata/core/constants/colors.dart';
import 'package:pernaldata/core/constants/textStyle.dart';


class ProfileTab extends StatelessWidget {
  final IconData icon;
  final String text;

  ProfileTab({required this.icon, required this.text});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25,bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            icon,
            color: blueThemeColor,
          ),
          SizedBox(
            width: 16,
          ),
          Text('$text',
              style: userNameStyle.copyWith(color: Colors.black)),
          Spacer(),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
