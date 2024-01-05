import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hintText});

  String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(kPrimaryColor),
            hintText: hintText,
            hintStyle: TextStyle(color: kPrimaryColor)),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
