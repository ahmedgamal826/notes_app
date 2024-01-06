import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomAppBar(
            text: 'Edit Note',
            iconData: Icons.check,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        CustomTextField(
          hintText: 'Title',
          maxLines: 1,
        ),
        CustomTextField(
          hintText: 'Content',
          maxLines: 5,
        ),
      ],
    );
  }
}
