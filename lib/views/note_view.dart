import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hello World");
        },
        child: Icon(
          Icons.add,
          size: 25,
        ),
      ),
      body: NoteViewBody(),
    );
  }
}
