import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/cubit/add_note_cubits/add_note_cubit.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'add_notes_form.dart';
import 'custom_button.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('Failed ${state.errMessage}');
          }

          if (state is AddNoteSuccess) {
            // Add Note Successfully
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          print('ui rebuild');
          return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    right: 16,
                    left: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(child: AddNotesForm()),
              ));
        },
      ),
    );
  }
}
