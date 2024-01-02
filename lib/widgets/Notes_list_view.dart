import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/reed_notes_cubit_cubit.dart';
import 'package:notes_app/models/note_modle.dart';
import 'package:notes_app/widgets/Costum_note_item.dart';

class NotesListViwe extends StatelessWidget {
  const NotesListViwe({
    super.key,
  });





  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReedNotesCubitCubit, ReedNotesCubitState>(
      builder: (context, state) {

        List<NoteModel> notes = BlocProvider.of<ReedNotesCubitCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(
                    
                    note: notes[index],
                    
                  ),
                );
              }),
        );
      },
    );
  }
}
