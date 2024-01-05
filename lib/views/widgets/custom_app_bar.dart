import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Notes',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
