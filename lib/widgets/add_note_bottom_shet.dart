import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/cubits/cubit/notes_state.dart';
import 'package:notes_app/cubits/notes_cubit/reed_notes_cubit_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottomShet extends StatefulWidget {
  const AddNoteBottomShet({super.key});

  @override
  State<AddNoteBottomShet> createState() => _AddNoteBottomShetState();
}

class _AddNoteBottomShetState extends State<AddNoteBottomShet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailer) {
          
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<ReedNotesCubitCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  right: 16,
                  left: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
