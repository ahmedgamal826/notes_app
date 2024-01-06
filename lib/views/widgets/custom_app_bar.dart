import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.iconData});

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            text,
            style: TextStyle(fontSize: 30),
          ),
        ),
        Spacer(),
        CustomIcon(
          iconData: iconData,
        ),
      ],
    );
  }
}
