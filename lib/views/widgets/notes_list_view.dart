import 'package:flutter/cupertino.dart';

import 'custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const NoteItem(),
          );
        });
  }
}
