import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            hintText: 'Title',
          ),
          CustomTextField(
            hintText: 'Content',
          ),
        ],
      ),
    );
  }
}
